/// <reference path="../.astro/types.d.ts" />
/// <reference types="astro/client" />

interface ImportMetaEnv {
  readonly RECAPTCHA_SECRET: string;
  readonly PUBLIC_GOOGLE_RECAPTCHA_KEY: string;

  readonly TURSO_DATABASE_URL: string;
  readonly TURSO_AUTH_TOKEN: string;

  readonly PUSHER_APP_ID: string;
  readonly PUBLIC_PUSHER_KEY: string;
  readonly PUSHER_SECRET: string;
  readonly PUBLIC_PUSHER_CLUSTER: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
