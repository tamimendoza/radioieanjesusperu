import { defineConfig } from "astro/config";
import tailwind from "@astrojs/tailwind";
import react from "@astrojs/react";
import cloudflare from "@astrojs/cloudflare";

// https://astro.build/config
export default defineConfig({
  integrations: [tailwind(), react()],
  output: 'hybrid',
  adapter: cloudflare({ mode: "directory" }),
  vite: {
    ssr: {
      target: "node",
      external: ["firebase-admin"]
    }
  }
});
