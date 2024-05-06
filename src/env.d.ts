/// <reference path="../.astro/types.d.ts" />
/// <reference types="astro/client" />

interface ImportMetaEnv {
  readonly FIREBASE_PRIVATE_KEY_ID: string;
  readonly FIREBASE_PRIVATE_KEY: string;
  readonly FIREBASE_PROJECT_ID: string;
  readonly FIREBASE_CLIENT_EMAIL: string;
  readonly FIREBASE_CLIENT_ID: string;
  readonly FIREBASE_AUTH_URI: string;
  readonly FIREBASE_TOKEN_URI: string;
  readonly FIREBASE_AUTH_CERT_URL: string
  readonly FIREBASE_CLIENT_CERT_URL: string;
  readonly RECAPTCHA_SECRET: string;

  readonly PUBLIC_FIREBASE_CLIENT_API_KEY: string;
  readonly PUBLIC_FIREBASE_CLIENT_AUTH_DOMAIN: string;
  readonly PUBLIC_FIREBASE_CLIENT_DATABASE_URL: string;
  readonly PUBLIC_FIREBASE_CLIENT_PROJECT_ID: string;
  readonly PUBLIC_FIREBASE_CLIENT_STORAGE_BUCKET: string;
  readonly PUBLIC_FIREBASE_CLIENT_MESSAGING_SENDER_ID: string;
  readonly PUBLIC_FIREBASE_CLIENT_APP_ID: string;
  readonly PUBLIC_FIREBASE_CLIENT_MEASUREMENT_ID: string;

  readonly PUBLIC_GOOGLE_RECAPTCHA_KEY: string;

  readonly TURSO_DATABASE_URL: string;
  readonly TURSO_AUTH_TOKEN: string;
}

interface ImportMeta {
  readonly env: ImportMetaEnv;
}
