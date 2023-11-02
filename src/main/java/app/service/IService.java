package app.service;

import app.model.User;

import java.util.List;

public interface IService<E> {
    boolean add(E e);
    boolean edit(E e,int id);
    boolean delete(int id);
    E findById(int id);
    List<E>findAll();

}
