# car-bid

## ERD

![image](https://user-images.githubusercontent.com/55126764/232321165-27e0b937-bd38-46cd-b260-f5dcf146cbe1.png)


## DDL

```sql
CREATE TABLE kota (
  kota_id INTEGER PRIMARY KEY,
  nama_kota TEXT NOT NULL,
  latitude NUMERIC(9, 6) NOT NULL,
  longitude NUMERIC(9, 6) NOT NULL
);

CREATE TABLE "user" (
  user_id SERIAL PRIMARY KEY,
  nama VARCHAR(225) NOT NULL,
  kontak VARCHAR(45) NOT NULL,
  kota_id INTEGER NOT NULL,
  CONSTRAINT fk_user_kota
    FOREIGN KEY (kota_id)
    REFERENCES "kota" (kota_id)
);

CREATE TABLE "iklan" (
  iklan_id SERIAL NOT NULL,
  judul VARCHAR(225) NOT NULL,
  merk VARCHAR(45) NOT NULL,
  model VARCHAR(45) NOT NULL,
  jenis_body VARCHAR(45) NOT NULL,
  transmission VARCHAR(45) NOT NULL,
  tahun DATE NOT NULL,
  deskripsi TEXT NOT NULL,
  price INT NOT NULL,
  date DATE NOT NULL,
  user_id INT NOT NULL,
  kota_id INT NOT NULL,
  PRIMARY KEY (iklan_id, user_id),
  CONSTRAINT fk_iklan_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_iklan_kota
    FOREIGN KEY (kota_id)
    REFERENCES "kota" (kota_id)
);

CREATE TABLE "bid" (
  bid_id SERIAL  NOT NULL,
  status VARCHAR(45) NOT NULL,
  price INT NOT NULL,
  date DATE NOT NULL,
  user_id INT NOT NULL,
  PRIMARY KEY (bid_id, user_id),
  CONSTRAINT fk_bid_user
    FOREIGN KEY (user_id)
    REFERENCES "user" (user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);

CREATE TABLE iklan_has_bid (
  iklan_has_bid_id SERIAL NOT null,
  iklan_id INT NOT NULL,
  iklan_user_id INT NOT NULL,
  bid_id INT NOT NULL,
  bid_user_id INT NOT NULL,
  PRIMARY KEY (iklan_has_bid_id, iklan_id, iklan_user_id, bid_id, bid_user_id),
  CONSTRAINT fk_iklan_has_bid_iklan
    FOREIGN KEY (iklan_id, iklan_user_id)
    REFERENCES iklan (iklan_id, user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_iklan_has_bid_bid
    FOREIGN KEY (bid_id, bid_user_id)
    REFERENCES bid (bid_id, user_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
);
```
