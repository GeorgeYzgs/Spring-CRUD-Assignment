/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.SpringAssignment.services;

import com.SpringAssignment.model.Trainer;
import java.util.List;

/**
 *
 * @author George.Giazitzis
 */
public interface TrainerServiceInterface {

    public List<Trainer> getAllTrainers();

    public void insertTrainer(Trainer trainer);

    public Trainer getTrainerbyId(int id);

    public void deleteTrainer(Integer trainerid);

    public void updateTrainer(Trainer trainer);

}
