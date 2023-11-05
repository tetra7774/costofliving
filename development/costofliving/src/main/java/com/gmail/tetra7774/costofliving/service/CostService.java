package com.gmail.tetra7774.costofliving.service;

import org.springframework.stereotype.Service;

import com.gmail.tetra7774.costofliving.repository.CostRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CostService {

    private final CostRepository repository;

    public costEntity find() {
        
        var record = repository.select();
        return new costEntity(record.getRecord());
    }

}
