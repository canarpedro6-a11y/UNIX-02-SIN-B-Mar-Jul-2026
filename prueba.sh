 1  git remote -v
    2  git fetch upstream
    3  git checkout -b eval_p2_1_v1 upstream/eval_p2_1_v1
    4  git push -u origin eval_p2_1_v1
    5  clear
   #PROBLEMA 1
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
   21  git commit -m "fix problem1: correcion de directorios recuperacion"
   22  clear
   #PROBLEMA2
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
   34  git commit -m "fix problema2: archivos movidos recuperacion"
   35  clear
   #PROBLEMA 3
   36  ls
   37  cat cosmos.txt
   38  chmod 640 cosmos.txt
   39  ls
   40  ls -l cosmos.txt
   41  git add .
   42  git commit -m "Fix problema 3: permisos numericos 640 en cosmos.txt recuperacion"
   #PROBLEMA 4
   43  clear
   44  ls
   45  chmod u+x galaxia.sh
   46  chmod o-w esterlla.conf
   47  chmod o-w estrella.conf
   48  git add .
   49  git commit -m "Fix problema 4: permisos simbolicos corregidos recperacion"
   50 #PROBLEMA 5
   chmod u+s bitacoras/galaxia.sh
   ls -l bitacoras/galaxia.sh
   git add .
   git commit -m "Fix problema 5: SUID activado en galaxia.sh recuperacion"
   #PROBLEMA 6
   sudo mkdir -p /tmp/nebula_zone
   sudo chmod 777 /tmp/nebula_zone
   sudo chmod +t /tmp/nebula_zone
   ls -ld /tmp/nebula_zone
   #PROBLEMA 7
   gpg --generate-key
   gpg --encrypt --recipient aurora@nebula.lab --output bitacoras/cosmos.txt.gpg bitacoras/cosmos.txt
   #PROBLEMA 8
   gpg --local-user aurora@nebula.lab --clearsign --output bitacoras/estrella.conf.asc bitacoras/estrella.conf
   gpg --verify bitacoras/galaxia.sh.sig bitacoras/galaxia.sh

