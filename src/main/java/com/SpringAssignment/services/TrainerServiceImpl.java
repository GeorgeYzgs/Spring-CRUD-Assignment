/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.SpringAssignment.services;

import com.SpringAssignment.model.Trainer;
import com.SpringAssignment.repos.TrainerRepository;
import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author George.Giazitzis
 */
@Service
@Transactional
public class TrainerServiceImpl implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;

    @Override
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    public void insertTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
    }

    @Override
    public void deleteTrainer(Trainer trainer) {
        trainerRepository.delete(trainer);
    }

    @Override
    public void updateTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
    }

    @Override
    public Trainer getTrainerbyId(int id) {
        return trainerRepository.getOne(id);
    }

}
