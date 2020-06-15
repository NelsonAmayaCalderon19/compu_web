package web.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import web.repository.ComputadorRepository;

@Controller
@RequestMapping({ "/perfil/" })
public class loginController {

	@Autowired
	ComputadorRepository computadorrepository;
	
	@GetMapping({"/"})
    public String inicio(Model modelo) {
        modelo.addAttribute("computador", computadorrepository.findAll());
        return "home";
    }
}
