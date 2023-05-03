package com.example.CarService;

import com.example.CarService.models.Part;
import com.example.CarService.models.repositories.PartRepository;
import com.example.CarService.models.repositories.UserRepository;
import com.example.CarService.services.PartService;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import java.util.ArrayList;
import java.util.List;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.*;

@Slf4j
class PartServiceTest {
    @Mock
    private PartRepository partRepository;

    @Mock
    private UserRepository userRepository;

    @InjectMocks
    private PartService partService;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    void listParts() {
        // given
        List<Part> parts = new ArrayList<>();
        parts.add(new Part(1L, "BMW"));
        parts.add(new Part(2L, "Porsche"));
        when(partRepository.findAll()).thenReturn(parts);

        // when
        List<Part> result = partService.listParts(null);

        // then
        Assertions.assertEquals(parts, result);
    }

    @Test
    void listPartsByTitle() {
        // given
        List<Part> parts = new ArrayList<>();
        parts.add(new Part(1L, "BMW"));
        when(partRepository.findByTitle("part1")).thenReturn(parts);

        // when
        List<Part> result = partService.listParts("part1");

        // then
        Assertions.assertEquals(parts, result);
    }
    @Test
    void getPartById() {
        // given
        Part part = new Part(1L, "BMW");

        // when
        when(partRepository.findById(part.getId())).thenReturn(java.util.Optional.ofNullable(part));
        Part result = partService.getPartById(part.getId());

        // then
        Assertions.assertEquals(part, result);
    }
}