import { useCallback, useRef, type SyntheticEvent } from "react";
import { useGoogleReCaptcha } from "react-google-recaptcha-v3";

export default function FormComponent() {
  const { executeRecaptcha } = useGoogleReCaptcha();
  const inputMensaje = useRef<HTMLInputElement>(null);

  const handleReCaptchaVerify = useCallback(async (evt: SyntheticEvent) => {
    evt.preventDefault();

    if (!executeRecaptcha) {
      console.log('Execute recaptcha not yet available');
      return;
    }

    const token = await executeRecaptcha('newChat');
    // Do whatever you want with the token
    const target = evt.target as typeof evt.target & {
      nombre: { value: string };
      mensaje: { value: string };
    };
    if (target.nombre.value.trim() == '' || target.mensaje.value == '') {
      return;
    }

    await guardar(target.nombre.value, target.mensaje.value, token);

    target.mensaje.value = "";
    inputMensaje.current?.focus();
  }, [executeRecaptcha]);

  const guardar = async (nombre: string, mensaje: string, token: string) => {
    const response = await fetch("api/chat.post.json", {
      method: "POST",
      cache: "no-cache",
      headers: {
        "Content-Type": "application/json"
      },
      body: JSON.stringify({
        nombre,
        mensaje,
        token
      })
    });
    return response.json();
  }

  return (
    <form className="flex flex-col" onSubmit={handleReCaptchaVerify}>
      <input
        name="nombre"
        className="border-solid border border-gray-300"
        placeholder="Ingrese Nombre"
      />
      <input
        ref={inputMensaje}
        name="mensaje"
        className="border-solid border border-gray-300"
        placeholder="Ingrese Mensaje"
      />
      <button
        type='submit'
        className="border-solid border border-gray-300 bg-blue-500 text-white h-9"
      >
        Agregar
      </button>
    </form>
  )
}
