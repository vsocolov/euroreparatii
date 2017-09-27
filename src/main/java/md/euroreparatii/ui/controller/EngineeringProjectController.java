package md.euroreparatii.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping(value = "/engineering-projects")
public class EngineeringProjectController {

    @RequestMapping
    public ModelAndView engineeringProjects() {
        return new ModelAndView("/engineeringProjects/engineeringProjects");
    }

    @RequestMapping(value = "/power-supply", method = GET)
    public ModelAndView powerSupply() {
        return new ModelAndView("/engineeringProjects/powerSupply");
    }

    @RequestMapping(value = "/ventilation", method = GET)
    public ModelAndView ventilation() {
        return new ModelAndView("/engineeringProjects/ventilation");
    }

    @RequestMapping(value = "/plumbing", method = GET)
    public ModelAndView plumbing() {
        return new ModelAndView("/engineeringProjects/plumbing");
    }

    @RequestMapping(value = "/conditioning", method = GET)
    public ModelAndView conditioning() {
        return new ModelAndView("/engineeringProjects/conditioning");
    }

    @RequestMapping(value = "/home-cinema", method = GET)
    public ModelAndView homeCinema() {
        return new ModelAndView("/engineeringProjects/homeCinema");
    }

    @RequestMapping(value = "/low-voltage", method = GET)
    public ModelAndView lowVoltage() {
        return new ModelAndView("/engineeringProjects/lowVoltage");
    }

    @RequestMapping(value = "/cctv", method = GET)
    public ModelAndView cctv() {
        return new ModelAndView("/engineeringProjects/cctv");
    }
}
