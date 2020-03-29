/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.SpringAssignment.controllers;

import com.SpringAssignment.model.Trainer;
import com.SpringAssignment.services.TrainerServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author George.Giazitzis
 */
@Controller
public class TrainerController {

    @Autowired
    TrainerServiceInterface trainerServiceInterface;

    @GetMapping("/")
    public String getAllTrainers(ModelMap mm) {
        mm.addAttribute("TrainerList", trainerServiceInterface.getAllTrainers());
        return "view";
    }

    @PostMapping("/delete")
    public String deleteTrainer(@RequestParam("TrainerID") Integer trainerId, ModelMap mm) {
        trainerServiceInterface.deleteTrainer(trainerId);
        mm.addAttribute("message", "Trainer has been deleted!");
        return getAllTrainers(mm);
    }

    @GetMapping("/preCreate")
    public String preCreateTrainer(ModelMap mm) {
        mm.addAttribute("newTrainer", new Trainer());
        return "create";
    }

    @PostMapping("/saveNew")
    public String createTrainer(@ModelAttribute("newTrainer") Trainer trainer, ModelMap mm) {
        trainerServiceInterface.insertTrainer(trainer);
        mm.addAttribute("message", "Trainer has been created!");
        return getAllTrainers(mm);
    }

    @PostMapping("/preupdate")
    public String preUpdateTrainer(@RequestParam("TrainerID") String trainerId, ModelMap mm) {
        int id = Integer.parseInt(trainerId);
        Trainer trainer = trainerServiceInterface.getTrainerbyId(id);
        mm.addAttribute("Trainer", trainer);
        return "update";
    }

    @PostMapping("/PostUpdate")
    public String updateTrainer(@ModelAttribute("Trainer") Trainer trainer, ModelMap mm) {
        trainerServiceInterface.updateTrainer(trainer);
        mm.addAttribute("message", "Trainer has been updated!");
        return getAllTrainers(mm);
    }
}
