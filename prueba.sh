 1  git remote -v
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git push -u origin eval_p2_1_v1
    5  clear
    6  ls
    7  cd nebula
    8  mkdir borradores 
    9  ls -F nebula/
   10  ls
   11  ls -F
   12  cd ..
   13  ls -f
   14  ls -F
   15  mv nebula bitacoras
   16  cd bitacoras
   17  mv borradores ..
   18  cd ..
   19  ls
   20  git add .
   21  git commit -m "fix problem1: correcion de directorios"
   22  clear
   23  cd bitacoras
   24  ls
   25  mv estrellas.bak estrellas.conf
   26  ls
   27  cd ..
   28  cd bitacoras
   29  ls
   30  mv estrellas.bak estrella.conf
   31  mv estrella.bak estrella.conf
   32  git add
   33  git add .
   34  git commit -m "fix problema2: archivos movidos"
   35  clear
   36  ls
   37  cat cosmos.txt
   38  chmod 640 cosmos.txt
   39  ls
   40  ls -l cosmos.txt
   41  git add .
   42  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt"
   43  clear
   44  ls
   45  chmod u+x galaxia.sh
   46  chmod o-w esterlla.conf
   47  chmod o-w estrella.conf
   48  git add .
   49  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   50  clear
   51  chmod u+s galaxia.sh
   52  ls -l
   53  git add .
   54  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   55  git add.
   56  git add .
   57  git commit -m "Fix problema 5: SUID activado en galaxia.sh"
   58  clear
   59  chmod +t /tmp/nebula_zone
   60  mkdir -p /tmp/nebula_zone
   61  chmod 777 /tmp/nebula_zone
   62  chmod +t /tmp/nebula_zone
   63  ls -ld /tmp/nebula_zone
   64  git add .
   65  git commit -m "Fix problema 6: sticky bit en /tmp/nebula_zone"
   66  history
   67  clear
   68  gpg --batch --generate-key <<EOF
Key-Type: RSA
Key-Length: 3072
Name-Real: aurora
Name-Email: aurora@nebula.lab
Expire-Date: 0
%no-protection
%commit
EOF

   69  gpg --encrypt --recipient aurora@nebula.lab nebula/bitacoras/cosmos.txt
   70  ls nebula/bitacoras/
   71  git add .
   72  git commit -m "Fix problema 7: llave GPG generada y cosmos.txt cifrado"
   73  history