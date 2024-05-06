export const prerender = false;

import type { APIRoute } from "astro";
import { turso } from "../../turso";

export const GET: APIRoute = async () => {
  const { rows } = await turso.execute("SELECT nombre, mensaje, fecha FROM chat ORDER BY fecha DESC LIMIT 20");
  return new Response(JSON.stringify(rows));
}

