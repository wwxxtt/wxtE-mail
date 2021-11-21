package cn.aa.userinbox.text;

import cn.aa.userinbox.FileDao;
import cn.aa.userinbox.FileDaoImpl;
import cn.aa.userinbox.FileService;
import cn.aa.userinbox.Userbox;

import java.util.ArrayList;

public class FileServiceTextimpl implements FileService {
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
