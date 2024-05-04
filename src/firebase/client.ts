import { initializeApp } from "firebase/app";

const firebaseApp = {
  apiKey: import.meta.env.PUBLIC_FIREBASE_CLIENT_API_KEY,
  authDomain: import.meta.env.PUBLIC_FIREBASE_CLIENT_AUTH_DOMAIN,
  databaseURL: import.meta.env.PUBLIC_FIREBASE_CLIENT_DATABASE_URL,
  projectId: import.meta.env.PUBLIC_FIREBASE_CLIENT_PROJECT_ID,
  storageBucket: import.meta.env.PUBLIC_FIREBASE_CLIENT_STORAGE_BUCKET,
  messagingSenderId: import.meta.env.PUBLIC_FIREBASE_CLIENT_MESSAGING_SENDER_ID,
  appId: import.meta.env.PUBLIC_FIREBASE_CLIENT_APP_ID,
  measurementId: import.meta.env.PUBLIC_FIREBASE_CLIENT_MEASUREMENT_ID,
}
export const app = initializeApp(firebaseApp);
