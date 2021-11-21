package cn.aa.userinbox;

import java.util.ArrayList;

public class FileServiceImpl implements FileService{

    @Override
    public ArrayList<Userbox> getAllinfo() {
        FileDao fs = new FileDaoImpl();
        return fs.getAllinfo();

    }

    @Override
    public ArrayList<Userbox> getalltext() {
        FileDao fs = new FileDaoImpl();
        return fs.getalltext();
    }
}
