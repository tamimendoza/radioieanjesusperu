import { createClient } from "@libsql/client/web";

export const turso = createClient({
  //url: "http://127.0.0.1:8080",
  url: import.meta.env.TURSO_DATABASE_URL,
  authToken: import.meta.env.TURSO_AUTH_TOKEN,
});
