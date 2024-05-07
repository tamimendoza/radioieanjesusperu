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
      // external: ["firebase-admin", "firebase-admin/app", "firebase-admin/database"]
    },
    define: {
      'process.env.TURSO_DATABASE_URL': JSON.stringify(process.env.TURSO_DATABASE_URL),
      'process.env.TURSO_AUTH_TOKEN': JSON.stringify(process.env.TURSO_AUTH_TOKEN),
      'process.env.RECAPTCHA_SECRET': JSON.stringify(process.env.RECAPTCHA_SECRET),
    }
  }
});
