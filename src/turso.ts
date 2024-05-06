export const prerender = false;

import { createClient } from "@libsql/client/web";

const url = import.meta.env.TURSO_DATABASE_URL?.trim();
if (url === undefined) {
  throw new Error("TURSO_URL env var is not defined");
}

const authToken = import.meta.env.TURSO_AUTH_TOKEN?.trim();
if (authToken == undefined) {
  throw new Error("TURSO_AUTH_TOKEN env var is not defined");
}

export const turso = createClient({
  url: url,
  authToken: authToken,
});
