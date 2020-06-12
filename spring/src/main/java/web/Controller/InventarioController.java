package web.Controller;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import web.repository.*;
import web.entities.*;


@Controller
//@RestController
@RequestMapping({"/inventario"})
public class InventarioController {
	@Autowired
	ComputadorRepository computadorrepository;
	@Autowired
	EmpleadoRepository empleadorepository;
	@Autowired
	MarcaRepository marcarepository;
	@Autowired
	TipocompRepository tipocomprepository;
	@Autowired
	ClienteRepository clienterepository;
	@Autowired
	InventarioRepository inventariorepository;
	
	@GetMapping("/ver")
	public String listado(Model model, Model mod){	
		mod.addAttribute("computador", computadorrepository.findAll());
		model.addAttribute("inventario", inventariorepository.findAll());
		return "inventario";
	}

}
