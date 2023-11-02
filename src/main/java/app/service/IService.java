package app.service;

import java.util.List;

public interface IService<E>  {
    boolean post(E e);
    boolean edit(E e, int id);
    boolean delete(int id);
    int findById(int id);
    List<E> findProductById(int id);
    List<E> findAll();
}
