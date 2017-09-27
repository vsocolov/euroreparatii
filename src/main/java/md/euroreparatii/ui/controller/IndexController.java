package md.euroreparatii.ui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
public class IndexController {

    @RequestMapping(value = "/", method = GET)
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/websitemap", method = GET)
    public ModelAndView websitemap() {
        return new ModelAndView("websitemap");
    }

    @RequestMapping(value = "/design-project", method = GET)
    public ModelAndView designProject() {
        return new ModelAndView("designProject");
    }

    @RequestMapping(value = "/contacts", method = GET)
    public ModelAndView contacts() {
        return new ModelAndView("contacts");
    }
}
