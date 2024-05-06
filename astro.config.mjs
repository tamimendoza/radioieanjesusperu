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
      target: "node",
      external: ["firebase-admin"]
    }
  }
});
