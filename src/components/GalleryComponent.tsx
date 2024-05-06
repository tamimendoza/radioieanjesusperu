import ImageGallery from "react-image-gallery";
import "react-image-gallery/styles/css/image-gallery.css";
import type Imagen from "../interfaces/Imagen";

interface Props {
  imagenes: Imagen[];
}

export default function GalleryComponent({ imagenes }: Props) {
  return (
    imagenes.length > 0 && <ImageGallery items={imagenes} autoPlay={true} />
  );
}
