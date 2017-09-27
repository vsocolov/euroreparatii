package md.euroreparatii.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/reparation")
public class ReparationController {

    @RequestMapping
    public ModelAndView reparation() {
        return new ModelAndView("/reparation/reparation");
    }

    @RequestMapping(value = "/calculator", method = GET)
    public ModelAndView calculator() {
        return new ModelAndView("/reparation/calculator");
    }
}
