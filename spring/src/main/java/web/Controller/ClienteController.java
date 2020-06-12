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
@RequestMapping({"/cliente"})
public class ClienteController {
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
	
	@GetMapping("/listado")
	public String listado(Model modelo, Model model, Model mod){	
		modelo.addAttribute("cliente", clienterepository.findAll());
		model.addAttribute("empleado", empleadorepository.findAll());
		mod.addAttribute("computador", computadorrepository.findAll());
		return "cliente";
	}
	@GetMapping("/registrar")
	public String registrar(Model modelo){	
		return "registrarcl";
	}
	@PostMapping({ "/registrarCliente" })
    public String registrarUsuario(HttpServletRequest request, Model model) {

		Cliente u = new Cliente();

        String cedula = request.getParameter("txtcedula");
        String nombre = request.getParameter("txtnombre");
        String telefono = request.getParameter("txttelefono");
        String email = request.getParameter("txtemail");

    
        u.setCedula(cedula);
        u.setNombre(nombre);
        u.setTelefono(telefono);
        u.setEmail(email);
        System.out.println(u);
        clienterepository.save(u);
        model.addAttribute("computador", computadorrepository.findAll());
        return "home";
    }
}
