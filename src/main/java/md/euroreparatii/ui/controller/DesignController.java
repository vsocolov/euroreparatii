package md.euroreparatii.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/design")
public class DesignController {

    @RequestMapping
    public ModelAndView galleryAppartments() {
        return new ModelAndView("/design/design");
    }
}
