export const prerender = false;

import type { APIRoute } from "astro";

import { turso } from "@src/turso";
import { LibsqlError } from "@libsql/client";

const RECAPTCHA_SECRET = import.meta.env.RECAPTCHA_SECRET;

export const POST: APIRoute = async ({ request }) => {
  if (request.headers.get("Content-Type") === "application/json") {
    let nombre: string;
    let mensaje: string;
    let token: string;
    try {
      const body = await request.json();
      nombre = body.nombre;
      mensaje = body.mensaje;
      token = body.token;
    } catch (error) {
      return new Response(null, { status: 400, statusText: "No autorizado" });
    }

    if (nombre == null || nombre == undefined || nombre.length == 0) {
      return new Response(null, { status: 401, statusText: "No autorizado" });
    }
    if (mensaje == null || mensaje == undefined || mensaje.length == 0) {
      return new Response(null, { status: 401, statusText: "No autorizado" });
    }
    if (token == null || token == undefined || token.length == 0) {
      return new Response(null, { status: 401, statusText: "No autorizado" });
    }

    try {
      const paramsRecaptcha = new URLSearchParams();
      paramsRecaptcha.append("secret", RECAPTCHA_SECRET);
      paramsRecaptcha.append("response", token);

      const response = await fetch("https://www.google.com/recaptcha/api/siteverify", {
        method: "POST",
        body: paramsRecaptcha
      });
      const data = await response.json();
      if (data.success == false) {
        return new Response(null, { status: 500, statusText: "No autorizado" });
      }
    } catch (error) {
      console.error(error);
      return new Response(null, { status: 500, statusText: "Token de chat inválido" });
    }

    try {
      await turso.execute({ sql: "INSERT INTO chat(nombre, mensaje) VALUES (?, ?)", args: [nombre, mensaje] });
    } catch (error) {
      if (error instanceof LibsqlError) {
        console.error(error);
      }

      return new Response(null, { status: 500, statusText: "Error al guardar chat" });
    }

    return new Response(JSON.stringify({
      message: "OK"
    }), {
      status: 200
    })
  }
  return new Response(null, { status: 400 });
}
