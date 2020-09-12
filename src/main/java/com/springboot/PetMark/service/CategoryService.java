package com.springboot.PetMark.service;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.util.List;

import org.springframework.data.domain.Pageable;

import com.springboot.PetMark.entities.Category;

public interface CategoryService {
	List<Category> findAll();

	Category findById(int id);

	List<Category> findByNameContainingOrderByName(String name);

	List<Category> showCategoryManagement();

	boolean isDuplicate(int id);

	void disContinueCategory(int id);

	void continueCategory(int id);

	void updateCategory(Category Category);

	void permanentlyDeleted(int id);

	BufferedImage createResizedCopy(Image originalImage, int scaledWidth, int scaledHeight, boolean preserveAlpha);

	boolean addCategory(Category Category);

	List<Category> findByIsDiscontinued(boolean isDiscontinued, Pageable pageable);

	List<Category> showCategoryPageable(boolean isDiscontinued, Pageable pageable);

	int countContinueProduct();

	int countDiscontinueProduct();
}
