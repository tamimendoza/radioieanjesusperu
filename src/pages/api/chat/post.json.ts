export const prerender = false;

import type { APIRoute } from "astro";

import crypto from "node:crypto";
import { turso } from "@src/turso";
import { LibsqlError } from "@libsql/client";

const RECAPTCHA_SECRET = import.meta.env.RECAPTCHA_SECRET;
const PUSHER_APP_ID = import.meta.env.PUSHER_APP_ID;
const PUSHER_KEY = import.meta.env.PUBLIC_PUSHER_KEY;
const PUSHER_SECRET = import.meta.env.PUSHER_SECRET;
const PUSHER_CLUSTER = import.meta.env.PUBLIC_PUSHER_CLUSTER;

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

    const currentTimestamp = Math.floor(Date.now() / 1000);
    const timestampLimit = 600;
    const randomTimestamp = Math.floor(Math.random() * timestampLimit);
    const auth_timestamp = currentTimestamp - randomTimestamp;

    const body = '{"name":"new-mensaje","channels":["radioieanjesusperu"],"data":"{\\"message\\":\\"Hola\\"}"}';
    const auth_version = '1.0';

    const body_md5 = crypto.createHash("md5").update(body).digest("hex");

    const string_to_sign =
      "POST\n/apps/" + PUSHER_APP_ID +
      "/events\nauth_key=" + PUSHER_KEY +
      "&auth_timestamp=" + auth_timestamp +
      "&auth_version=" + auth_version +
      "&body_md5=" + body_md5;

    const auth_signature = crypto.createHmac("sha256", PUSHER_SECRET).update(string_to_sign).digest("hex");

    const apiURL = "http://api-" + PUSHER_CLUSTER + ".pusher.com/apps/" + PUSHER_APP_ID +
      '/events?auth_key=' + PUSHER_KEY +
      '&auth_timestamp=' + auth_timestamp +
      '&auth_version=' + auth_version +
      '&body_md5=' + body_md5 +
      '&auth_signature=' + auth_signature;

    const fetchPusher = {
      method: "POST",
      headers: {
        "Content-Type": "application/json"
      },
      body: body
    }

    try {
      const responseP = await fetch(apiURL, fetchPusher);
      console.log(responseP.status);
      const texto = await responseP.text();
      console.log(texto);
    } catch (error) {
      console.log(error);
    }

    return new Response(JSON.stringify({
      message: "OK"
    }), {
      status: 200
    })
  }
  return new Response(null, { status: 400 });
}
