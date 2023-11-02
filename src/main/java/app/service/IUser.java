package app.service;

public interface IUser<E> {
    boolean checkUser(String E,String e);
    int getIdUser(String E, String e);
    boolean register();
    boolean forgotPassword();
}
