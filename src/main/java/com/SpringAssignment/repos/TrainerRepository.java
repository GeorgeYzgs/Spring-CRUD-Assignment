/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.SpringAssignment.repos;

import com.SpringAssignment.model.Trainer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author George.Giazitzis
 */
@Repository
public interface TrainerRepository extends JpaRepository<Trainer, Integer> {
}
