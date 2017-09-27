package md.euroreparatii.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/gallery")
public class GalleryController {

    @RequestMapping
    public ModelAndView galleryAppartments() {
        return new ModelAndView("/gallery/gallery");
    }

    @RequestMapping(value = "/non-dwelling", method = GET)
    public ModelAndView galleryNonDwellingSpaces() {
        return new ModelAndView("/gallery/nonDwelling");
    }

    @RequestMapping(value = "/cottage", method = GET)
    public ModelAndView galleryCottages() {
        return new ModelAndView("/gallery/cottage");
    }
}
