import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import react from "@astrojs/react";
import cloudflare from "@astrojs/cloudflare";

// https://astro.build/config
export default defineConfig({
  build: {
    inlineStylesheets: "always",
  },
  compressHTML: true,
  prefetch: true,
  devToolbar: {
    enabled: false
  },
  integrations: [tailwind(), react()],
  output: 'hybrid',
  adapter: cloudflare({ mode: "directory" }),
  vite: {
    build: {
      cssMinify: "lightningcss",
    },
    ssr: {
      target: "webworker",
      // noExternal: false
      external: ["firebase-admin"]
    },
    define: {
      'process.env.TURSO_DATABASE_URL': JSON.stringify(process.env.TURSO_DATABASE_URL),
      'process.env.TURSO_AUTH_TOKEN': JSON.stringify(process.env.TURSO_AUTH_TOKEN),
      'process.env.RECAPTCHA_SECRET': JSON.stringify(process.env.RECAPTCHA_SECRET),
      'process.env.FIREBASE_CLIENT_DATABASE_URL': JSON.stringify(process.env.FIREBASE_CLIENT_DATABASE_URL),
      'process.env.FIREBASE_PROJECT_ID': JSON.stringify(process.env.FIREBASE_PROJECT_ID),
      'process.env.FIREBASE_PRIVATE_KEY_ID': JSON.stringify(process.env.FIREBASE_PRIVATE_KEY_ID),
      'process.env.FIREBASE_PRIVATE_KEY': JSON.stringify(process.env.FIREBASE_PRIVATE_KEY),
      'process.env.FIREBASE_CLIENT_EMAIL': JSON.stringify(process.env.FIREBASE_CLIENT_EMAIL),
      'process.env.FIREBASE_CLIENT_ID': JSON.stringify(process.env.FIREBASE_CLIENT_ID),
      'process.env.FIREBASE_AUTH_URI': JSON.stringify(process.env.FIREBASE_AUTH_URI),
      'process.env.FIREBASE_TOKEN_URI': JSON.stringify(process.env.FIREBASE_TOKEN_URI),
      'process.env.FIREBASE_AUTH_CERT_URL': JSON.stringify(process.env.FIREBASE_AUTH_CERT_URL),
      'process.env.FIREBASE_CLIENT_CERT_URL': JSON.stringify(process.env.FIREBASE_CLIENT_CERT_URL)
    }
  }
});
