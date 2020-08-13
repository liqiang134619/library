package com.cola.library;

import com.alibaba.druid.sql.dialect.sqlserver.ast.SQLServerOutput;
import com.cola.library.entity.Book;
import com.cola.library.entity.SysMenu;
import com.cola.library.mapper.BookMapper;
import com.cola.library.mapper.SysMenuMapper;
import com.cola.library.model.MenuModel;
import com.cola.library.service.itf.IBookService;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.xml.transform.Source;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/**
 * @author Liq
 * @date 2020/8/11
 */

@RunWith(SpringRunner.class)
@SpringBootTest
public class MapperTest {


    @Autowired
   IBookService bookService;

    @Test
    public  void test() throws IOException {




        for (int i = 1; i < 10; i++) {

            String url = "https://book.douban.com/tag/%E5%B0%8F%E8%AF%B4?start="+(40+(i*20))+"&type=T";

            Document document = Jsoup.connect(url).get();

            Elements select = document.select(".info > h2 > a");
            List<Book> bookList = new ArrayList<>();
            Book book;
            HashMap<String,String> hashMap;
            boolean flag;
            for (Element element : select) {
                flag = false;
                book = new Book();
                String href2 = element.attr("href");
                Document doc = Jsoup.connect(href2).get();
                String text1 = doc.select("#wrapper > h1 > span").first().text();
                book.setName(text1);
                Elements select1 = doc.select(" #content > div > div.article > div.indent div.subjectwrap.clearfix > div.subject.clearfix");
                Element element1 = select1.get(0);
                String attr = element1.getElementsByClass("nbg").attr("href");
                book.setImg(attr);
                String text = element1.text();
                String replace = text.replace(": ", ":");
                System.out.println("replace:"+ replace);
                String replace1 = replace.replace("] ", "]");
                String[] s = replace1.split(" ");

                hashMap = new HashMap<>();
                for (String s1 : s) {
                    try {
                        String[] split = s1.split(":");
                        hashMap.put(split[0],split[1]);
                    } catch (Exception e) {
                        flag= true;
                        break;
                    }
                }
                if(flag) {
                    continue;
                }
                String author = hashMap.getOrDefault("作者", "");
                String press = hashMap.getOrDefault("出版社", "");
                String binding = hashMap.getOrDefault("装帧", "");
                String price = hashMap.getOrDefault("定价", "");
                String ibsn = hashMap.getOrDefault("ISBN", "");
                String pages = hashMap.getOrDefault("页数", "");
                String publishTime = hashMap.getOrDefault("出版年", "");
                String ser = hashMap.getOrDefault("丛书", "");
                if (StringUtils.isNoneEmpty(pages)) {
                    book.setPages(Integer.valueOf(pages));
                }
                book.setAuthor(author).setPress(press)
                        .setBinding(binding).setIsbn(ibsn);
                String substring = price.substring(0, price.length() - 1);
                BigDecimal bigDecimal = new BigDecimal(substring);
                book.setPrice(bigDecimal);
                book.setPublisTime(publishTime).setSeries(ser);
                bookList.add(book);

            }
            System.out.println(bookService.saveBatch(bookList));

        }



    }
}
