package com.example.CarService.controllers;

import com.example.CarService.models.Image;
import com.example.CarService.models.Part;
import com.example.CarService.services.PartService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.html.HTMLDocument;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class PartsController {
    private final PartService partService;

    @GetMapping("/")
    public String parts(@RequestParam(name = "title",required = false) String title, Principal principal, Model model){
        model.addAttribute("parts", partService.listParts(title));
        model.addAttribute("user", partService.getUserByPrincipal(principal));
        return "parts";
    }
    @GetMapping("/part/{id}")
    public String partInfo(@PathVariable Long id, Model model){
        Part part = partService.getPartById(id);
        model.addAttribute("part", part);
        model.addAttribute("images", part.getImages());
        return "part-info";

    }
    @PostMapping("/part/create")
    public String createPart(@RequestParam("file1") MultipartFile file1,
                             @RequestParam("file2") MultipartFile file2,
                             @RequestParam("file3") MultipartFile file3,
                             Part part, Principal principal) throws IOException {
        partService.savePart(principal, part, file1,file2,file3);
        return "redirect:/";
    }
    @PostMapping("/part/delete/{id}")
    public String deletePart(@PathVariable Long id){
        partService.deletePart(id);
        return "redirect:/";
    }

}
