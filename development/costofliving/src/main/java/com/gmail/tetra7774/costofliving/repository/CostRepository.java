package com.gmail.tetra7774.costofliving.repository;

import org.springframework.stereotype.Repository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Repository
public class CostRepository {

    public repositoryDTO select() {
        return new repositoryDTO("Hello world");
    }

}
