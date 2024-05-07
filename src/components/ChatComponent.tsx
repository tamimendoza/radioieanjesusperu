import { useState, useEffect, useRef } from 'react';

import FormComponent from './FormComponent';
import moment from 'moment/min/moment-with-locales';
import 'moment/locale/es';
import { GoogleReCaptchaProvider } from 'react-google-recaptcha-v3';
import type Mensaje from '../interfaces/Mensaje';
import pusherJs from 'pusher-js';

const GOOGLE_RECAPTCHA_KEY = import.meta.env.PUBLIC_GOOGLE_RECAPTCHA_KEY;
const PUSHER_APP_KEY = import.meta.env.PUBLIC_PUSHER_KEY;
const PUSHER_CLUSTER = import.meta.env.PUBLIC_PUSHER_CLUSTER;

export default function ChatComponent() {
  const [mensajes, setMensajes] = useState([]);
  const divChat = useRef<HTMLDivElement>(null);
  const pusher = new pusherJs(PUSHER_APP_KEY, {
    cluster: PUSHER_CLUSTER
  });
  const channel = pusher.subscribe('radioieanjesusperu');
  channel.bind('new-mensaje', function(_data: any) {
    getMensajes();
  });

  useEffect(() => {
    getMensajes();
  }, []);

  const getMensajes = async () => {
    const response = await fetch('api/chat/get.json');

    const data = await response.json();
    if (data) setMensajes(data);
    resetScroll();
  };

  const resetScroll = () => {
    if (divChat.current) {
      divChat.current.scrollTo(0, 0);
    }
  }

  return (
    <div className="flex flex-col h-full py-3">
      <div ref={divChat} className="flex-grow overflow-y-scroll md-h-20 sm:h-80 border-solid border border-gray-300">
        <ul className="list-none space-y-5 divide-y divide-gray-300">
          {
            mensajes.map((mensaje: Mensaje, index: number) => (
              <li key={index} className="px-2 border-solid">
                <small className="font-bold">{mensaje.nombre}: </small>
                <small>{mensaje.mensaje}</small>
                <small className="float-right text-gray-500">{moment(mensaje.fecha).locale('es').fromNow()}</small>
              </li>
            ))}
        </ul>
      </div>
      <div className="h-20">
        <GoogleReCaptchaProvider reCaptchaKey={GOOGLE_RECAPTCHA_KEY}>
          <FormComponent />
        </GoogleReCaptchaProvider>
      </div>
    </div>
  );
}
