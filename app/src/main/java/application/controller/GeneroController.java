package application.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import application.model.GeneroRepository;
import application.model.Genero;

@Controller
@RequestMapping("/genero")
public class GeneroController {
    @Autowired
    private GeneroRepository generoRepository;

    @RequestMapping("/list")
    public String list(Model model) {
        model.addAttribute("generos", generoRepository.findAll());
        return "/genero/list";
    }

    @RequestMapping("/insert")
    public String insert() {
        return "/genero/insert";
    }

    @RequestMapping(value="/insert", method = RequestMethod.POST)
    public String insert(@RequestParam("nome") String nome) {
        Genero genero = new Genero();
        genero.setNome(nome);
        generoRepository.save(genero);
        return "redirect:/genero/list";
    }

    @RequestMapping("/delete")
    public String delete(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepository.findById(id);

        if (genero.isPresent()) {
            model.addAttribute("genero", genero.get());
            return "/genero/delete";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value="/delete", method = RequestMethod.POST)
    public String delete(@RequestParam("id") int id) {
        generoRepository.deleteById(id);
        return "redirect:/genero/list";
    }

    @RequestMapping("/update")
    public String update(Model model, @RequestParam("id") int id) {
        Optional<Genero> genero = generoRepository.findById(id);
        if (genero.isPresent()) {
            model.addAttribute("genero", genero.get());
            return "/genero/update";
        }
        return "redirect:/genero/list";
    }

    @RequestMapping(value="/update", method = RequestMethod.POST)
    public String update(@RequestParam("id") int id, @RequestParam("nome") String nome) {
        Optional<Genero> genero = generoRepository.findById(id);
        if (genero.isPresent()) {
            genero.get().setNome(nome);
            generoRepository.save(genero.get());
        }
        return "redirect:/genero/list";
    }
}
