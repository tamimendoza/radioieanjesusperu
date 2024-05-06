export const prerender = false;

import type { APIRoute } from "astro";
import { turso } from "@src/turso";

export const GET: APIRoute = async () => {
  try {
    const { rows } = await turso.execute("SELECT nombre, mensaje, fecha FROM chat ORDER BY fecha DESC LIMIT 20");
    return new Response(JSON.stringify(rows));
  } catch (error) {
    console.error(error);
    return new Response('Error al ejecutar la consulta', { status: 500 });
  }
}

