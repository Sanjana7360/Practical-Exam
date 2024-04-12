import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'app_model.dart';
import 'details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map<String, dynamic>> product = [
    {
      'name': 'Shirt',
      'category': 'Men',
      'desc': 'Cotton-Linen Blend\nCountry of Origin: India\nColours available',
      'price': 200,
      'img': 'https://www.jiomart.com/images/product/original/rvkas4ierp/bought-first-men-brown-printed-cotton-blend-casual-shirt-xl-product-images-rvkas4ierp-0-202209140821.jpg?im=Resize=(500,630)',
    },
    {
      'name': 'Jeans',
      'category': 'Men',
      'desc': 'Denim Jeans\nCountry of Origin: India\nColours available',
      'price': 700,
      'img': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLHmAvuNMnw-lDRwLSfAfBn6wuce5caaIEjg&usqp=CAU',
    },
    {
      'name': 'Tie',
      'category': 'Men',
      'desc': 'Striped tie for office wear\nCountry of Origin: India\nColours available',
      'price': 250,
      'img': 'https://www.jiomart.com/images/product/original/rvlfehdrrl/medium-black-varsity-jacket-for-men-bomber-jacket-for-men-product-images-rvlfehdrrl-0-202302271835.png?im=Resize=(500,630)',
    },
    {
      'name': 'Dress',
      'category': 'Women',
      'desc': 'A knee-length dress for party wear\nCountry of Origin: India\nColours available',
      'price': 930,
      'img': 'data:image/jpeg;base64,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',
    },
    {
      'name': 'Saree',
      'category': 'Women',
      'desc': 'A custom made cotton saree\nCountry of Origin: India\nColours available',
      'price': 560,
      'img': 'https://stylebypanaash.in/cdn/shop/products/f1292e07-21c7-4428-b3ef-9e1e7a4ad7f7.jpg?v=1681363705&width=1445',
    },
    {
      'name': 'Heels',
      'category': 'Women',
      'desc': 'A 4-inch block heel\nCountry of Origin: India\nColours available',
      'price': 349,
      'img': 'data:image/jpeg;base64,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',
    },
    {
      'name': 'Onesie',
      'category': 'Kids',
      'desc': 'A knee-length dress for party wear\nCountry of Origin: India\nColours available',
      'price': 350,
      'img': 'https://bigberthaoriginal.ie/cdn/shop/products/kids-hooded-sherpa-fleece-christmas-print-onesie-5-10-years-red_CTCHONECHRE5_01_1200x1200.jpg?v=1662455973',
    },
    {
      'name': 'Shoes',
      'category': 'Kids',
      'desc': 'LED lights shoes\nCountry of Origin: India\nColours available',
      'price': 799,
      'img': 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUWFRgWFRYYGRgYGBgYGBgYGhgYGBgYGBgZGhgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QHxISHjQrJCw2NDQ0NDY0NDQ0PTQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NjE0Nf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAABBQEBAAAAAAAAAAAAAAACAAEDBAUGB//EAD0QAAEDAgMFBQYEBAYDAAAAAAEAAhEDIQQSMQVBUWFxIoGRofAGEzKxwdFCUuHxBxRigiNykqKywjND4v/EABoBAAIDAQEAAAAAAAAAAAAAAAACAQMEBQb/xAArEQACAgICAQIFBAMBAAAAAAAAAQIRAyESMQRBURMiMmFxBZGx8COBoRT/2gAMAwEAAhEDEQA/AOfaEYCEI0h6QQCJoTApxqgZdBAIg1MiAQSCQkEaaEAO1SKMImlAEjSiQBGgA5Tyo0YKAJAU4KBrkUoBiISCJJAIBqIJpRIAJoRDVMEkChRKcBJqdBA6JoTNThADpBOCmQA+VJLMkgDlgia5CEQagAkkydBKYbSjao2lG0oGDSSQuKADaUio2lGEqkBIEQUbUSLAMFOgCIFLYEjSilA1GmTAIlDKdpQymAJJqaUTSgCRqdC1GAgVsdhSDkyZAEidpUYKNBBJKSEIgUAJJMkgDlsyIFQNKlYUASSma5MkglEgKlCgaplFjBShTkJFLIBNCnYFA1TNUIB0QCQCdACASTgIwEIBmok6dqagGATIwgcLqUA7SiahCNoUkN0KUcpy1CVAvYSIBRtcjapskkCZJJBA4Kcc0wKTigB8qSWZJAHJI2oToiBS2BIE8KPMjAUpgSIgUDSjAS7WxkwkkkioJHYVIComFT06ZcYFyghtJWwmvRAqyzZx/E5oHI5j5WWk/wBnn5M7HZjEhtu0ORG9PwlV0Z//AGYeXFSRkNCdKCLGxGo4Jg5K9GkJoRgIGqVgUoGLKo3hWnBQOpucYaJJ0Cli8klsGjTLjAEk6BdHhNltY0OfDnm4H4WjjG8psDg202zq43cf+o8O9Z+2tqmix73G0WG+5gAeKuxwt2zied50pfJj69y3iMbTLgx4BmfLeq+I2dN6ZzDXKde7ivPRtZ73h5Op7o4LsMBtKMrtdxHJaJQjJHOw+Vlwy0/9PoEhGxysbRYM2YaPE9+/6Kq1YZRcZUeow5FlgprpkuZJME4UlgScIQU6CaHlJNKSAo5RqkAUTSpFWKSAJApAIgAm7AQRgJAJ2oQyCCcBIIgUrJAylDXqvY3sGCZnpwVqk2TAF1n7bflsNyuwwt2cz9SzKOPgnt/wNsfaL3VmsdNpPgF6tgz2B0svEdi1z/MsOtz/AMSfovatn1W5G9oacR8lfLZw46kUttbJDwXsEPHdn5HnzXIvYQSCIIsQdQV6F75ptmBPDf4LL2rs1rwXAQ/j91Q4KXR1fG8141xltHIaKzRKhe2CQdykpmyr4uLpnWU4ygpReiyxhJgalWaNE58rXFrWmHvES935Gk6NG88ehUezXy0ubq5xY08I+Jw6X/0rQawNAAsBYK3jX5OP5Xlc3xi9fyTvpuyfFmEicwGbXiBB8O9effxAxZBZSk73nza3/svSKLS5hA1iRzggwvNf4iYJwqseB2XsLeQLST55vJXR1FnMluaOUw1VdbsbEzYrii0tK2tlYrKQU8JCZI+p6SGZ6fMCR3LPBCv7IxGZo9fuVXx+FyPMaG7ft3KnyIbUkdb9I8hU8T/KIWlOkGonBZtnb0AUQSARgJgY0JkSSLDZyo0RAJmomlIKGE7UwUuGpF7wxsS7STA0lSgbpWw2BOBdWnbOcLZmG8EDNI46gWAutL/Dosa7KM0XJufPRWwg5OjFn8/HhjfZnMwD3CzT1IgeJU9DZLzq5o6GfktPZJ/mKDnVOznksP5G6MPf8XesiphsVSJa1he0fib2mmd4KsWKN7Zzp/qeaX0pJf8ASbEup0Gm8ujX1ouJ2nji8nr5LoquysVVP/ieZ3mB8yp8D/D+o8zWe1jfysuT3nTwKt0lSMLlOcuUnbMb2K2Y6rXzx2Wani51onpJ8F7DQblAaNwVHZezqeHYGU2gAePW+9XwVXJjpVsjxFIOEHuO8HiDuKgFQkFrtW2PO1nDqFZzKhi3w6eLfkf/AKUDHPbbpw7ON+o58uqougsm/DU+pW4cO2oHh2hBaDwP5hzEDzXOF5Y17XDtMdBHgZ+verJY+UVL1ss8TzN5MSekrNrZLQ1oAEBoMDm43+Q8VdqOWbsqvmDjvLir70jVPYjd9FzA14hDt3ZDMTTc3j2rXLXfmaN++RzMKpSdCu0qhUCtJnk3tDsSpQcM7ezpnF2Eg2vuN9DdY9F5a6Ny97zseIe0GbE7yOZ3jkVhY/2KwlWS1gaTMFksNtTDewb/ANKmNIRv3OY9mtphsBx3a/bkumo41lYmmSJEFp8VlUf4flj+1XLWbjlGaZ0LpLe+O4LTxHsYKY95QrPL2icr8uV44ZgBlPirnKLVMrhyhLnF00A6iQYIuFE+mVewGKbWaOOk6EEWIPQjRR4mmWmD1B4hZcmNx/B6LxPNjnVdP1RXaxOGJw/kiBSG6wfdpIpSQFs45pRyog5IOVZBOXKzs67xO6SqgVnAWfJMCFMeyrPfw3XsdK15tHS4BsbEXT4nZzazcrwWzaWHLbo6QmobjqtFjgVfFtdHm5xvtFnCljAAJbAAEjQcBCsteSTDge8Lnsa5weC0kSw6W0k/ZXsDig+GkS7LJMc41Vji1HkVxyRcuPRquzb5QhyFtSLa8OSycRj/APGazdMf3bp748UqLejba9S5rKsxynmyCRyVlY197c/orleoqAYXkkCY700Y26Kc+ThFv9jWwWyw6jmJ7lh7QwbCx7ssuDTfdbjxspcRtE0mnMY5ceQCpYXH5hffr37k+R8VRV+nxcpOdVqn9zP2WY36/Sy1HGy5+jiyK+QwILgABA9W81Y21i3AZG24n6JGmns1trtEWL2qPeNa34Q6D10nuXTYN5c0OjWOlxK4PDYUudwAuXbmjiV2GxcY17HR+EgDX4bgT4JGR2a3v4HwA9HEfNDSxTY0cI7xeTqDP7LH2k97XOgkh4hsbtJ6HXxWfgGkvABMNuYJjy5+QTqOrsqeT5uNHY0cUJnMI52+aKtV7Lg2/wCXfY7h0WUK5CtUCCOHRJyoscUznNiYWqzE15p1MjsjmnK7LmMh0GI3ArocdhXPa0NEEZtRaJGu/jorGQbko9W3IcuSpjYv8cuUXsyRs58SLAT8ctNuqpyuhrfCeh+S5wc1U1R2/Dzyyp8vQWcp00DinUbNhw88yjzHkowjWfmzJGcvcnZVUrawVRqka2TA1NlPKXoO8jQb34hpL6TyJHZYCAPOx1BvwWxgduYlsCpSa7S4OQknhqD4Km3Z9bNNJ1oAIP5oA7hYnvXQ4HZTywe9c03BhrYuCCO1rqAt/FVvTOBkyOU27sJu1aT4FRj2EfmaYBto5n2WpQxFNo7BBH9Op6266of5Rpm3r18kBwI3Jd9CpLuii/aWesGTYGOpFrnhMBVdp0SKtvxHM08jcfbuUeOwpp1DFg7tDvv858FsVme9oteB2mw8f9h43TJUD2aWz62ZjSdSO1/mHxfQ/wBytPfCrBgaGPbo8tcOctM+YHgocZiQ0Ek2QSQY/FRYalW9i7WbRnMAZF53LP2JiGCrmrCQbR8gsH232zTdUdRw4AbYOeD8Ui7QItfUyVofHHHfr/aMjhPLkVehvVvc4twc15yTIaLZjpN++3VXGbOY0Q0LlNimKbQtGvtGoABnPgJtzWRycns6MIqEaXRXx9PJiOTmg97XCfKVDiKYe7LvLnEncADGY8gAFQ2njn8ZsYm/Lu1KvVnENe8fiYAD1ILv+SZXVlU2m6M/HYkRkp2YN+954n7blb2IHsDntAPFp0IO4+E+Cg2ZgTUdc5WjV3DhrqTw9HsKNBoaGtFt335lDRCMiptik4ZXseziCA9oPI6+SLDYigf/ABvYAb9qWT/qV6tgGHdqmw+xWFjQBx3f1u3qNk0uyaiyYNiP6SCFoU2clw9XDPNV7Q0U2scWgntF8fi7IsJm3JaeGY9v/tH+/wCyaONtWI5JHUX4FNPJclVpVHOze/eL6Ne9rfCFbw4eTBqEwxwgEm8GHE8dN6JY3FWEZW0jexJAY4m0NOvRci/FEoHuJ1JPUygIXPnmlLrR2/Hx/BTV9kv805JQwkk+JL3NHNnONRJJ2hSUDsC1th4LO4uIlrN3Em1umvcFlhdnsfDhjGjjBniTf10VmJXIp8nLxhXuVzhajDLZcNzmjttG4Pb+IerLbwNQljXOaA64I6EweUgT3qTNKemJI4D19lvbbVM5CW7LDBZZ+0MaWENaATEmeEn7LQB4etfsVXx2zW1CCSWkCJF5E6EePilH2ZO0Koq0w+ILXx3Hd4geKu4A5KZadwjvIupWbJaIGdxaLxAEm0yfWqmdhWjWSNzZ7Nt0b+9DdBWyCm4kMv2WNDW6wT+IidRMiVBhclasGOMMm53Tx6KWoS9wptMOcQByCq7b2c7CtDnG5JDQPxOV2NKPzydf3sR/O+C7KvttkwzhSpODnvbJOvu2mQDY2cd3TouCY26sYuu57i5xlzjJJUdIXCyzyObtm3HiUI0jp9mWaOilxTlFgfhCWJddFivszMfxW5s+kKtJnag5Q292mLX7wsTG6LW9mX9iJmD87x5qzl8tfcolF8r9CDHh7AGgFuUiRBHaIuZ3iwAPTit/2frueztajW0DUx5QtEUmPaGvbmG6dR0OoRUsK1gytADdf1J39UED1G2Swz4A7+N+0VKW2UVDSMpME6Hnw70AyWrhqbzL2NJ4kCfFV2bOp5iAwXJ3RvO5V8XiarXEOpuDJBY9nbJECQ8bjM+G9CzEO17f+gjXv5qyMW12VN16FH2k2YA+i5ohpc9jo/rY4NPitvD0hkEbwPMLPxVeGy8VCJESJvugQTKs0aDyW9lwAIM5t2sWUOOuxoy30cy4QY4W8EynxzIqPH9R8zP1UC5DVOjvxdpMaEk6SgY5wBGkAiYrCsOi28nde/rv6ArsMPnABaRcAljhIB3xEEfJZmF2T2G5rOJDjN44DnaR/cVtYalkAbMwNXak8fPzWzFCo/c5mefOWukHTfUO5jegJO7SdNyu0qcDXrzPH1xUTHE6Cf2lWGM4+vX1VlFJK0wjDkLQE4I9eungpAdzoVHG4kAc9AOJ4KbEVgBdYtOvNQuO74Rwi9+AVcpUjV4uD4s1fXqExrqTs7+ydS52g6LnNtbbqYl+Z7yQ2WsBgZWzaw3nefsi9rPal+KeBIFNkBoaIzECC4nUiZjquZfiFVkyyklH0RrWOEZclGn+5JUddTYcXCzWVrwVpYLVNHooZ0mDNgliNUOH0RVzdSimRn4kCFZ9nHw4t7x0lV8Rootj1Mle+jgR8irIq7KpuqXuegYZyusKzsK6QrzJClCBuZl00+Sak4gkTb4u4wJ8vMKVhBUFamQQQYINjEjmCN7T64qQLWdL3YfvI6b+vgqraw/ECw97mdQ7d3xCnoPk9ktPQgoESaLIpDr4fRR1gAABYcFJfh5jgoaxA+I/VA5x+2RFZ/8Aaf8AY1UVPtSoTVeTrm8hYeUKsHLmT+pnZxfQvwEkmzJkg5grW2FhMzy86N0/zfoFkrptiOAY3vJ8VpxRuRlzy4x0bjAI0UrHDl6/dV2Rw4qdrlsTOaTM5BSNB9evUc1Eyok6uEWBNmUFbERqYVbEY1rRJK5jF7dDqgY6zJAn+o7jw7+KjsaKt7Olwjg+q0PkMzXPKVzvt3tOiKpo4ZxhstqmIDjbsgxJiDfQzvWftn2kLh7ulGWCHOju7BmNN8dOK5oKiTuzrNxilGD0lv2Cc9ROKMNRijySLRWVixaGzatwD+6BuHVhmHUqSQjjZ0mFKWIIk+tyq4CvNjqB4o6zpcVYnZRJUQVys99Qtew3sVfqFZ2IhTHsrO82ZXkAyt2i9cT7OYsObBMEW36LrsMbaq1a0ypl4s3t8EQMi6Fjjv8AWiMsm4sVJBGWQbaeKBlFpPwjwUzXbinAEoAcUG8AoXUxuQOrPGsCH5TbS9jrvBB6Smdim5gy8uBOm8CSOv2UuLFUkzlNtNis7nB8o+ipLT9o2Q9p4tjvBP3CyQVzciqTOvjlcEw0kMpKsssxSrWzdo5XZCeigKz8ZhC67TBGhWjHJRlvoz548o0juKONBi+qsfzg4rzgYnEM5+M+SN+1cQREHqCfRWnlF9MwqEvVHoNXaTW/E4DqVlYz2kaDlZJJ0/ZcY6tUcZM+aTHVYygkDlbzF1CnFPY7xS9DS2htZ7nHM4g2tvvfuWY6qT03jj1RU8E86hWmbOO9VSyIujjoohqsU6JK0aeCAVpmHCqcy5R9zPZhSrDMMrrWBEGJOYxVFFOKatQnyqOQxWDCL7xoUn1nk6DxU5CBzE6m10VyipdlWo5x3x0VGtT5nxWm9qq1WKVN+4nCItlY3JUHB1jy5+uK77Z+LBAuvMaogre2JtPRpPQ8eS0xm5bM04JLR6XRfKsAR0XP4DGW1WvQrSrU7KWqLhaHD6oMhCQPBG1/r9lIENehJkQZEOBtMaHrqDxG+yip4eLuu7QTBIHUanzstEAKKop5OqIpXZy/tRT7DXcHR4g/YLnGrq/aYf4R6t+a5NiwZ18x0vGdwCSShJUGgzAEsqOETVYVEJpIhQCnCKEjYcSAUeScUhwU4CINRYcSH3ScMUwaiAQTRCGI2tR5UsqgkHKnhOGooQAICctThOgAciEtUiYhAED6arvpK+QgcxSmLRg4mgVRa8tMTEaFdLUw9lmYvATor4ZKZTOHIv7G2xo1xvuPH9V2GCx4I1XlVWk9mokLX2Rtkjsu7rjN+oV8W30Z5Qrs9WoV53qw2oJ/b1xXI4DagdoZ6fZa+GxfH15+oVikVUdC16hqvVMYpVsTtNjB2nDoE230K2l2Ufaev2A3eXDyn9FzjUW09oe+qAj4WiB1JufkkwLBm+po6eBVBChJGkqS8y0YCABSBNKxB2o0LQiSgG0J0zU6AHARBMAiQL6iSSSQMIhOAmSQAikkCnm6BRBqUI0MIGBAT5UQCdApGQhcxTISEAUqmFaRoszFbGBuLFb8JsnJNGbRDgmcu1mJp/A6QNxv+qt0/aDENs5pHT9VtGkgdhQdy0R8iS+5nl48WZL/AGhqut2/XeohWq1DeQFs/wAk3gPBTMoAbk8vKm1XQsfFhF2VsFh8oWgxqTWI1jk7NaGypkSSgYymp0kkzANqdJJKAbUTUkkCjjVEkkgBJ2+vBJJAwimSSQAk4SSQAaSSSAEE4SSQIO/VCUkkEjJ0kkAJJJJNEhjpFJJTIhBBOkkkHEkkkgk//9k=',
    },
    {
      'name': 'Frock',
      'category': 'Kids',
      'desc': 'soft cloth, cotton frock for girls\nCountry of Origin: India\nColours available',
      'price': 400,
      'img': 'https://www.jiomart.com/images/product/original/rvmlqelnk6/aashrun-kids-frocks-kids-dress-party-wear-party-frocks-fancy-frocks-fancy-frockrocks-rayon-frocks-rayon-frock-blue-frock-knee-length-frock-frock-for-girls-frocks-for-kids-baby-dress-baby-frocks-white-product-images-rvmlqelnk6-0-202309081315.jpg?im=Resize=(500,630)',
    },
  ];

  List<appmodel> list = [];

  @override
  void initState() {
    for (int i = 0; i < product.length; i++) {
      appmodel am = appmodel.fromMap(product[i]);
      setState(() {
        list.add(am);
      });
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.location_on_rounded),
            SizedBox(
              height: 15,
            ),
            Text(
              'Hobiganj City',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey.shade200),
              child: Icon(
                CupertinoIcons.line_horizontal_3_decrease,
                size: 20,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(
                height: 30,
              ),
              Container(
                height: 40,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 10),
                      child: Icon(
                        CupertinoIcons.search,
                        size: 18,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Text(
                      'Search your favourite products',
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.filter_list_rounded,
                        size: 18,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.brown.shade300,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'All',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                          'Men',
                          style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Women',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 40,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Kids',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Column(
                  children: <Widget>[
                    ...list
                        .map((e) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          ProductDetailsScreen(
                                            name: e.name!,
                                            category: e.category!,
                                            price: e.price!,
                                            img: e.img!,
                                            desc: e.desc!,
                                          )));
                                },
                                child: Container(
                                  height: 250,
                                  width: width - 30,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            right: 8.0, top: 8.0),
                                        child: Align(
                                            alignment: Alignment.topRight,
                                            child: Icon(
                                              CupertinoIcons.heart,
                                            )),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8.0),
                                        child: CircleAvatar(
                                          radius: 60,
                                          backgroundImage: NetworkImage(e.img!),
                                        ),
                                      ),
                                      Text(
                                        e.name!,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Spacer(),

                                      // SizedBox(
                                      //   height: 18,
                                      // ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text(
                                            'Rs.' + e.price.toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          // SizedBox(
                                          //   width: 61.3,
                                          // ),
                                          Spacer(),
                                          InkWell(
                                            onTap: () {
                                              CartModel hcart = CartModel(
                                                  counter: 1,
                                                  name: e.name!,

                                                  price: e.price!,

                                                  img: e.img!,
                                                  desc: e.desc!, category: e.category!);
                                              CartList.add(hcart);
                                            },
                                            child: Container(
                                              clipBehavior: Clip.none,
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(15),
                                                    bottomRight:
                                                        Radius.circular(15)),
                                                color:Colors.brown.shade300,
                                              ),
                                              child: Icon(
                                                CupertinoIcons.plus,
                                                color: Colors.white,
                                                size: 14,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
