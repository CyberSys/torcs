@echo off
echo Checking directories ...

call .\create_dir .\export
call .\create_dir .\export\lib
call .\create_dir .\export\libd

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\interfaces\graphic.h .\export\include\graphic.h
copy .\src\interfaces\raceman.h .\export\include\raceman.h
copy .\src\interfaces\robot.h .\export\include\robot.h
copy .\src\interfaces\simu.h .\export\include\simu.h
copy .\src\interfaces\track.h .\export\include\track.h
copy .\src\interfaces\car.h .\export\include\car.h
copy .\src\interfaces\ttypes.h .\export\include\ttypes.h
copy .\src\interfaces\telemetry.h .\export\include\telemetry.h
copy .\src\interfaces\practicectrl.h .\export\include\practicectrl.h
copy .\src\interfaces\playerpref.h .\export\include\playerpref.h
copy .\src\interfaces\js.h .\export\include\js.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\libs\txml\xml.h .\export\include\xml.h
copy .\src\libs\txml\xmlparse.h .\export\include\xmlparse.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\libs\tgf\tgf.h .\export\include\tgf.h
copy .\src\libs\tgf\os.h .\export\include\os.h
copy .\src\libs\tgf\queue.h .\export\include\queue.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\libs\torcs\torcs.h .\export\include\torcs.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\libs\racemantools\racemantools.h .\export\include\racemantools.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\libs\robottools\robottools.h .\export\include\robottools.h

call .\create_dir .\export
call .\create_dir .\export\include
copy .\src\windows\osspec.h .\export\include\osspec.h

call .\create_dir .\export
call .\create_dir .\export\include
call .\create_dir .\export\include\3D
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Basic.h .\export\include\3D\Basic.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Matrix.h .\export\include\3D\Matrix.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Point.h .\export\include\3D\Point.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Quaternion.h .\export\include\3D\Quaternion.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Tuple3.h .\export\include\3D\Tuple3.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Tuple4.h .\export\include\3D\Tuple4.h
copy .\src\modules\simu\simuv2\SOLID-2.0\include\3D\Vector.h .\export\include\3D\Vector.h

call .\create_dir .\export
call .\create_dir .\export\include
call .\create_dir .\export\include\SOLID
copy .\src\modules\simu\simuv2\SOLID-2.0\include\SOLID\solid.h .\export\include\SOLID\solid.h

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\free\free.xml .\runtimed\categories\free.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Offroad-RWD-GrA\Offroad-RWD-GrA.xml .\runtimed\categories\Offroad-RWD-GrA.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-4WD-GrB\Track-4WD-GrB.xml .\runtimed\categories\Track-4WD-GrB.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-FWD-GrA\Track-FWD-GrA.xml .\runtimed\categories\Track-FWD-GrA.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-FWD-GrB\Track-FWD-GrB.xml .\runtimed\categories\Track-FWD-GrB.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-RWD-GrA\Track-RWD-GrA.xml .\runtimed\categories\Track-RWD-GrA.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-RWD-GrB\Track-RWD-GrB.xml .\runtimed\categories\Track-RWD-GrB.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\categories
copy .\data\cars\categories\Track-RWD-GrC\Track-RWD-GrC.xml .\runtimed\categories\Track-RWD-GrC.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\155-DTM
copy .\data\cars\models\155-DTM\155-DTM.xml .\runtimed\cars\155-DTM\155-DTM.xml
copy .\data\cars\models\155-DTM\texmapper.xml .\runtimed\cars\155-DTM\texmapper.xml
copy .\data\cars\models\155-DTM\155-DTM-1024.rgb .\runtimed\cars\155-DTM\155-DTM-1024.rgb
copy .\data\cars\models\155-DTM\155-DTM.rgb .\runtimed\cars\155-DTM\155-DTM.rgb
copy .\data\cars\models\155-DTM\tex-wheel.rgb .\runtimed\cars\155-DTM\tex-wheel.rgb
copy .\data\cars\models\155-DTM\155-DTM.ac .\runtimed\cars\155-DTM\155-DTM.ac
copy .\data\cars\models\155-DTM\155-DTM-base.ac .\runtimed\cars\155-DTM\155-DTM-base.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\360-modena
copy .\data\cars\models\360-modena\360-modena.xml .\runtimed\cars\360-modena\360-modena.xml
copy .\data\cars\models\360-modena\360-modena.ac .\runtimed\cars\360-modena\360-modena.ac
copy .\data\cars\models\360-modena\360-modena-lod1.ac .\runtimed\cars\360-modena\360-modena-lod1.ac
copy .\data\cars\models\360-modena\texmapper.xml .\runtimed\cars\360-modena\texmapper.xml
copy .\data\cars\models\360-modena\tex-wheel.rgb .\runtimed\cars\360-modena\tex-wheel.rgb
copy .\data\cars\models\360-modena\360-modena.rgb .\runtimed\cars\360-modena\360-modena.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\acura-nsx-sz
copy .\data\cars\models\acura-nsx-sz\acura-nsx-sz.xml .\runtimed\cars\acura-nsx-sz\acura-nsx-sz.xml
copy .\data\cars\models\acura-nsx-sz\acura-nsx-sz.ac .\runtimed\cars\acura-nsx-sz\acura-nsx-sz.ac
copy .\data\cars\models\acura-nsx-sz\tex-wheel.rgb .\runtimed\cars\acura-nsx-sz\tex-wheel.rgb
copy .\data\cars\models\acura-nsx-sz\acura-nsx-sz.rgb .\runtimed\cars\acura-nsx-sz\acura-nsx-sz.rgb
copy .\data\cars\models\acura-nsx-sz\acura-nsx-sz-lod1.ac .\runtimed\cars\acura-nsx-sz\acura-nsx-sz-lod1.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\buggy
copy .\data\cars\models\buggy\buggy.xml .\runtimed\cars\buggy\buggy.xml
copy .\data\cars\models\buggy\buggy.ac .\runtimed\cars\buggy\buggy.ac
copy .\data\cars\models\buggy\buggy.rgb .\runtimed\cars\buggy\buggy.rgb
copy .\data\cars\models\buggy\tex-wheel.rgb .\runtimed\cars\buggy\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\cg-nascar-fwd
copy .\data\cars\models\cg-nascar-fwd\cg-nascar-fwd.xml .\runtimed\cars\cg-nascar-fwd\cg-nascar-fwd.xml
copy .\data\cars\models\cg-nascar-fwd\cg-nascar-fwd.ac .\runtimed\cars\cg-nascar-fwd\cg-nascar-fwd.ac
copy .\data\cars\models\cg-nascar-fwd\cg-nascar-fwd.rgb .\runtimed\cars\cg-nascar-fwd\cg-nascar-fwd.rgb
copy .\data\cars\models\cg-nascar-fwd\tex-wheel.rgb .\runtimed\cars\cg-nascar-fwd\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\cg-nascar-rwd
copy .\data\cars\models\cg-nascar-rwd\cg-nascar-rwd.xml .\runtimed\cars\cg-nascar-rwd\cg-nascar-rwd.xml
copy .\data\cars\models\cg-nascar-rwd\cg-nascar-rwd.ac .\runtimed\cars\cg-nascar-rwd\cg-nascar-rwd.ac
copy .\data\cars\models\cg-nascar-rwd\cg-nascar-rwd-lod1.ac .\runtimed\cars\cg-nascar-rwd\cg-nascar-rwd-lod1.ac
copy .\data\cars\models\cg-nascar-rwd\cg-nascar-rwd.rgb .\runtimed\cars\cg-nascar-rwd\cg-nascar-rwd.rgb
copy .\data\cars\models\cg-nascar-rwd\tex-wheel.rgb .\runtimed\cars\cg-nascar-rwd\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\corvette
copy .\data\cars\models\corvette\corvette.xml .\runtimed\cars\corvette\corvette.xml
copy .\data\cars\models\corvette\corvette-base.ac .\runtimed\cars\corvette\corvette-base.ac
copy .\data\cars\models\corvette\corvette.ac .\runtimed\cars\corvette\corvette.ac
copy .\data\cars\models\corvette\tex-wheel.rgb .\runtimed\cars\corvette\tex-wheel.rgb
copy .\data\cars\models\corvette\texmapper.xml .\runtimed\cars\corvette\texmapper.xml
copy .\data\cars\models\corvette\corvette.rgb .\runtimed\cars\corvette\corvette.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\lotus-gt1
copy .\data\cars\models\lotus-gt1\lotus-gt1.xml .\runtimed\cars\lotus-gt1\lotus-gt1.xml
copy .\data\cars\models\lotus-gt1\lotus-gt1.ac .\runtimed\cars\lotus-gt1\lotus-gt1.ac
copy .\data\cars\models\lotus-gt1\lotus-gt1-base.ac .\runtimed\cars\lotus-gt1\lotus-gt1-base.ac
copy .\data\cars\models\lotus-gt1\texmapper.xml .\runtimed\cars\lotus-gt1\texmapper.xml
copy .\data\cars\models\lotus-gt1\tex-wheel.rgb .\runtimed\cars\lotus-gt1\tex-wheel.rgb
copy .\data\cars\models\lotus-gt1\lotus-gt1.rgb .\runtimed\cars\lotus-gt1\lotus-gt1.rgb
copy .\data\cars\models\lotus-gt1\lotus-gt1-512.rgb .\runtimed\cars\lotus-gt1\lotus-gt1-512.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\mclaren-f1
copy .\data\cars\models\mclaren-f1\mclaren-f1.xml .\runtimed\cars\mclaren-f1\mclaren-f1.xml
copy .\data\cars\models\mclaren-f1\mclaren-f1.ac .\runtimed\cars\mclaren-f1\mclaren-f1.ac
copy .\data\cars\models\mclaren-f1\mclaren-f1-lod1.ac .\runtimed\cars\mclaren-f1\mclaren-f1-lod1.ac
copy .\data\cars\models\mclaren-f1\texmapper.xml .\runtimed\cars\mclaren-f1\texmapper.xml
copy .\data\cars\models\mclaren-f1\tex-wheel.rgb .\runtimed\cars\mclaren-f1\tex-wheel.rgb
copy .\data\cars\models\mclaren-f1\mclaren-f1.rgb .\runtimed\cars\mclaren-f1\mclaren-f1.rgb
copy .\data\cars\models\mclaren-f1\mclaren-f1-512.rgb .\runtimed\cars\mclaren-f1\mclaren-f1-512.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\p406
copy .\data\cars\models\p406\p406.xml .\runtimed\cars\p406\p406.xml
copy .\data\cars\models\p406\texmapper.xml .\runtimed\cars\p406\texmapper.xml
copy .\data\cars\models\p406\p406.ac .\runtimed\cars\p406\p406.ac
copy .\data\cars\models\p406\p406-base.ac .\runtimed\cars\p406\p406-base.ac
copy .\data\cars\models\p406\p406-512.rgb .\runtimed\cars\p406\p406-512.rgb
copy .\data\cars\models\p406\p406.rgb .\runtimed\cars\p406\p406.rgb
copy .\data\cars\models\p406\tex-wheel.rgb .\runtimed\cars\p406\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\porsche-gt1
copy .\data\cars\models\porsche-gt1\porsche-gt1.xml .\runtimed\cars\porsche-gt1\porsche-gt1.xml
copy .\data\cars\models\porsche-gt1\porsche-gt1.ac .\runtimed\cars\porsche-gt1\porsche-gt1.ac
copy .\data\cars\models\porsche-gt1\porsche-gt1-lod1.ac .\runtimed\cars\porsche-gt1\porsche-gt1-lod1.ac
copy .\data\cars\models\porsche-gt1\tex-wheel.rgb .\runtimed\cars\porsche-gt1\tex-wheel.rgb
copy .\data\cars\models\porsche-gt1\porsche-gt1.rgb .\runtimed\cars\porsche-gt1\porsche-gt1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\torcs
copy .\data\cars\models\torcs\torcs.xml .\runtimed\cars\torcs\torcs.xml
copy .\data\cars\models\torcs\torcs.ac .\runtimed\cars\torcs\torcs.ac
copy .\data\cars\models\torcs\torcs.rgb .\runtimed\cars\torcs\torcs.rgb
copy .\data\cars\models\torcs\tex-wheel.rgb .\runtimed\cars\torcs\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\viper-gts-r
copy .\data\cars\models\viper-gts-r\viper-gts-r.xml .\runtimed\cars\viper-gts-r\viper-gts-r.xml
copy .\data\cars\models\viper-gts-r\tex-wheel.rgb .\runtimed\cars\viper-gts-r\tex-wheel.rgb
copy .\data\cars\models\viper-gts-r\viper-gts-r.rgb .\runtimed\cars\viper-gts-r\viper-gts-r.rgb
copy .\data\cars\models\viper-gts-r\viper-gts-r.ac .\runtimed\cars\viper-gts-r\viper-gts-r.ac
copy .\data\cars\models\viper-gts-r\viper-gts-r-512.rgb .\runtimed\cars\viper-gts-r\viper-gts-r-512.rgb
copy .\data\cars\models\viper-gts-r\viper-gts-r-base.ac .\runtimed\cars\viper-gts-r\viper-gts-r-base.ac
copy .\data\cars\models\viper-gts-r\texmapper.xml .\runtimed\cars\viper-gts-r\texmapper.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\cars
call .\create_dir .\runtimed\cars\xj-220
copy .\data\cars\models\xj-220\xj-220.xml .\runtimed\cars\xj-220\xj-220.xml
copy .\data\cars\models\xj-220\xj-220.rgb .\runtimed\cars\xj-220\xj-220.rgb
copy .\data\cars\models\xj-220\xj-220.ac .\runtimed\cars\xj-220\xj-220.ac
copy .\data\cars\models\xj-220\tex-wheel.rgb .\runtimed\cars\xj-220\tex-wheel.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\fonts
copy .\data\data\fonts\b5.glf .\runtimed\data\fonts\b5.glf
copy .\data\data\fonts\b6.glf .\runtimed\data\fonts\b6.glf
copy .\data\data\fonts\b7.glf .\runtimed\data\fonts\b7.glf
copy .\data\data\fonts\digital.glf .\runtimed\data\fonts\digital.glf
copy .\data\data\fonts\fragile.glf .\runtimed\data\fonts\fragile.glf
copy .\data\data\fonts\Makefile .\runtimed\data\fonts\Makefile

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\img
copy .\data\data\img\arrow-down.png .\runtimed\data\img\arrow-down.png
copy .\data\data\img\arrow-down-pushed.png .\runtimed\data\img\arrow-down-pushed.png
copy .\data\data\img\arrow-left.png .\runtimed\data\img\arrow-left.png
copy .\data\data\img\arrow-left-pushed.png .\runtimed\data\img\arrow-left-pushed.png
copy .\data\data\img\arrow-right.png .\runtimed\data\img\arrow-right.png
copy .\data\data\img\arrow-right-pushed.png .\runtimed\data\img\arrow-right-pushed.png
copy .\data\data\img\arrow-up.png .\runtimed\data\img\arrow-up.png
copy .\data\data\img\arrow-up-pushed.png .\runtimed\data\img\arrow-up-pushed.png
copy .\data\data\img\env.png .\runtimed\data\img\env.png
copy .\data\data\img\ruler.png .\runtimed\data\img\ruler.png
copy .\data\data\img\ruler-pushed.png .\runtimed\data\img\ruler-pushed.png
copy .\data\data\img\splash-free1.png .\runtimed\data\img\splash-free1.png
copy .\data\data\img\splash-free2.png .\runtimed\data\img\splash-free2.png
copy .\data\data\img\splash-free3.png .\runtimed\data\img\splash-free3.png
copy .\data\data\img\splash-free4.png .\runtimed\data\img\splash-free4.png
copy .\data\data\img\splash-free5.png .\runtimed\data\img\splash-free5.png
copy .\data\data\img\splash-free7.png .\runtimed\data\img\splash-free7.png
copy .\data\data\img\splash-free.png .\runtimed\data\img\splash-free.png
copy .\data\data\img\splash-graphic.png .\runtimed\data\img\splash-graphic.png
copy .\data\data\img\splash-joycal.png .\runtimed\data\img\splash-joycal.png
copy .\data\data\img\splash-joyconf.png .\runtimed\data\img\splash-joyconf.png
copy .\data\data\img\splash-main.png .\runtimed\data\img\splash-main.png
copy .\data\data\img\splash-options.png .\runtimed\data\img\splash-options.png
copy .\data\data\img\splash.png .\runtimed\data\img\splash.png
copy .\data\data\img\splash-practice.png .\runtimed\data\img\splash-practice.png
copy .\data\data\img\splash-prsess.png .\runtimed\data\img\splash-prsess.png
copy .\data\data\img\splash-qrdrv.png .\runtimed\data\img\splash-qrdrv.png
copy .\data\data\img\splash-qrloading.png .\runtimed\data\img\splash-qrloading.png
copy .\data\data\img\splash-qr.png .\runtimed\data\img\splash-qr.png
copy .\data\data\img\splash-qrtrk.png .\runtimed\data\img\splash-qrtrk.png
copy .\data\data\img\splash-quit.png .\runtimed\data\img\splash-quit.png
copy .\data\data\img\splash-result.png .\runtimed\data\img\splash-result.png

call .\create_dir .\runtimed
call .\create_dir .\runtimed\menu
copy .\data\data\menu\entry.xml .\runtimed\menu\entry.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\objects
copy .\data\data\objects\ad1.ac .\runtimed\data\objects\ad1.ac
copy .\data\data\objects\building1.ac .\runtimed\data\objects\building1.ac
copy .\data\data\objects\building2.ac .\runtimed\data\objects\building2.ac
copy .\data\data\objects\forest1.ac .\runtimed\data\objects\forest1.ac
copy .\data\data\objects\forest2.ac .\runtimed\data\objects\forest2.ac
copy .\data\data\objects\forest3.ac .\runtimed\data\objects\forest3.ac
copy .\data\data\objects\needle.ac .\runtimed\data\objects\needle.ac
copy .\data\data\objects\stadium1.ac .\runtimed\data\objects\stadium1.ac
copy .\data\data\objects\stand-inter.ac .\runtimed\data\objects\stand-inter.ac
copy .\data\data\objects\stand-main.ac .\runtimed\data\objects\stand-main.ac
copy .\data\data\objects\stand-wall.ac .\runtimed\data\objects\stand-wall.ac
copy .\data\data\objects\tree10.ac .\runtimed\data\objects\tree10.ac
copy .\data\data\objects\tree11.ac .\runtimed\data\objects\tree11.ac
copy .\data\data\objects\tree12.ac .\runtimed\data\objects\tree12.ac
copy .\data\data\objects\tree13.ac .\runtimed\data\objects\tree13.ac
copy .\data\data\objects\tree14.ac .\runtimed\data\objects\tree14.ac
copy .\data\data\objects\tree15.ac .\runtimed\data\objects\tree15.ac
copy .\data\data\objects\tree16.ac .\runtimed\data\objects\tree16.ac
copy .\data\data\objects\tree17.ac .\runtimed\data\objects\tree17.ac
copy .\data\data\objects\tree1.ac .\runtimed\data\objects\tree1.ac
copy .\data\data\objects\tree2.ac .\runtimed\data\objects\tree2.ac
copy .\data\data\objects\tree3.ac .\runtimed\data\objects\tree3.ac
copy .\data\data\objects\tree4.ac .\runtimed\data\objects\tree4.ac
copy .\data\data\objects\tree5.ac .\runtimed\data\objects\tree5.ac
copy .\data\data\objects\tree7.ac .\runtimed\data\objects\tree7.ac
copy .\data\data\objects\tree8.ac .\runtimed\data\objects\tree8.ac
copy .\data\data\objects\tree9.ac .\runtimed\data\objects\tree9.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\sound
copy .\data\data\sound\crash1.wav .\runtimed\data\sound\crash1.wav
copy .\data\data\sound\crash2.wav .\runtimed\data\sound\crash2.wav
copy .\data\data\sound\crash3.wav .\runtimed\data\sound\crash3.wav
copy .\data\data\sound\crash4.wav .\runtimed\data\sound\crash4.wav
copy .\data\data\sound\crash5.wav .\runtimed\data\sound\crash5.wav
copy .\data\data\sound\crash6.wav .\runtimed\data\sound\crash6.wav
copy .\data\data\sound\engine-1.wav .\runtimed\data\sound\engine-1.wav
copy .\data\data\sound\skid.wav .\runtimed\data\sound\skid.wav

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\textures
copy .\data\data\textures\background.png .\runtimed\data\textures\background.png
copy .\data\data\textures\logo.png .\runtimed\data\textures\logo.png
copy .\data\data\textures\pylon1.png .\runtimed\data\textures\pylon1.png
copy .\data\data\textures\pylon2.png .\runtimed\data\textures\pylon2.png
copy .\data\data\textures\pylon3.png .\runtimed\data\textures\pylon3.png
copy .\data\data\textures\tr-asphalt-both.png .\runtimed\data\textures\tr-asphalt-both.png
copy .\data\data\textures\tr-asphalt-left.png .\runtimed\data\textures\tr-asphalt-left.png
copy .\data\data\textures\tr-asphalt-l.png .\runtimed\data\textures\tr-asphalt-l.png
copy .\data\data\textures\tr-asphalt.png .\runtimed\data\textures\tr-asphalt.png
copy .\data\data\textures\tr-asphalt-p.png .\runtimed\data\textures\tr-asphalt-p.png
copy .\data\data\textures\tr-asphalt-right.png .\runtimed\data\textures\tr-asphalt-right.png
copy .\data\data\textures\tr-barrier.png .\runtimed\data\textures\tr-barrier.png
copy .\data\data\textures\tr-concrete.png .\runtimed\data\textures\tr-concrete.png
copy .\data\data\textures\tr-dirtb.png .\runtimed\data\textures\tr-dirtb.png
copy .\data\data\textures\tr-dirt.png .\runtimed\data\textures\tr-dirt.png
copy .\data\data\textures\tr-grass.png .\runtimed\data\textures\tr-grass.png
copy .\data\data\textures\tr-sand.png .\runtimed\data\textures\tr-sand.png
copy .\data\data\textures\back-sign.rgb .\runtimed\data\textures\back-sign.rgb
copy .\data\data\textures\building1.rgb .\runtimed\data\textures\building1.rgb
copy .\data\data\textures\building2.rgb .\runtimed\data\textures\building2.rgb
copy .\data\data\textures\concrete2.rgb .\runtimed\data\textures\concrete2.rgb
copy .\data\data\textures\concrete.rgb .\runtimed\data\textures\concrete.rgb
copy .\data\data\textures\counter-bg-10.rgb .\runtimed\data\textures\counter-bg-10.rgb
copy .\data\data\textures\counter-bg2.rgb .\runtimed\data\textures\counter-bg2.rgb
copy .\data\data\textures\counter-bg.rgb .\runtimed\data\textures\counter-bg.rgb
copy .\data\data\textures\counter-bg-rpm.rgb .\runtimed\data\textures\counter-bg-rpm.rgb
copy .\data\data\textures\counter.rgb .\runtimed\data\textures\counter.rgb
copy .\data\data\textures\env.rgb .\runtimed\data\textures\env.rgb
copy .\data\data\textures\forest1.rgb .\runtimed\data\textures\forest1.rgb
copy .\data\data\textures\forest2.rgb .\runtimed\data\textures\forest2.rgb
copy .\data\data\textures\forest3.rgb .\runtimed\data\textures\forest3.rgb
copy .\data\data\textures\grassg1.rgb .\runtimed\data\textures\grassg1.rgb
copy .\data\data\textures\grassg2.rgb .\runtimed\data\textures\grassg2.rgb
copy .\data\data\textures\grassg3.rgb .\runtimed\data\textures\grassg3.rgb
copy .\data\data\textures\logo.rgb .\runtimed\data\textures\logo.rgb
copy .\data\data\textures\panel-empty.rgb .\runtimed\data\textures\panel-empty.rgb
copy .\data\data\textures\people1.rgb .\runtimed\data\textures\people1.rgb
copy .\data\data\textures\pit-left.rgb .\runtimed\data\textures\pit-left.rgb
copy .\data\data\textures\pit-right.rgb .\runtimed\data\textures\pit-right.rgb
copy .\data\data\textures\pylon1.rgb .\runtimed\data\textures\pylon1.rgb
copy .\data\data\textures\pylon2.rgb .\runtimed\data\textures\pylon2.rgb
copy .\data\data\textures\pylon3.rgb .\runtimed\data\textures\pylon3.rgb
copy .\data\data\textures\red-light-off.rgb .\runtimed\data\textures\red-light-off.rgb
copy .\data\data\textures\red-light-on.rgb .\runtimed\data\textures\red-light-on.rgb
copy .\data\data\textures\rim1.rgb .\runtimed\data\textures\rim1.rgb
copy .\data\data\textures\rim2.rgb .\runtimed\data\textures\rim2.rgb
copy .\data\data\textures\rim3.rgb .\runtimed\data\textures\rim3.rgb
copy .\data\data\textures\rock2.rgb .\runtimed\data\textures\rock2.rgb
copy .\data\data\textures\rock3.rgb .\runtimed\data\textures\rock3.rgb
copy .\data\data\textures\rpm5500.rgb .\runtimed\data\textures\rpm5500.rgb
copy .\data\data\textures\rpm7000.rgb .\runtimed\data\textures\rpm7000.rgb
copy .\data\data\textures\rpm8000.rgb .\runtimed\data\textures\rpm8000.rgb
copy .\data\data\textures\rpm8500.rgb .\runtimed\data\textures\rpm8500.rgb
copy .\data\data\textures\smoke.rgb .\runtimed\data\textures\smoke.rgb
copy .\data\data\textures\speed240.rgb .\runtimed\data\textures\speed240.rgb
copy .\data\data\textures\speed300.rgb .\runtimed\data\textures\speed300.rgb
copy .\data\data\textures\speed360.rgb .\runtimed\data\textures\speed360.rgb
copy .\data\data\textures\torcs-ad1.rgb .\runtimed\data\textures\torcs-ad1.rgb
copy .\data\data\textures\tr-asphalt-both_nmm.rgb .\runtimed\data\textures\tr-asphalt-both_nmm.rgb
copy .\data\data\textures\tr-asphalt-both.rgb .\runtimed\data\textures\tr-asphalt-both.rgb
copy .\data\data\textures\tr-asphalt-left_nmm.rgb .\runtimed\data\textures\tr-asphalt-left_nmm.rgb
copy .\data\data\textures\tr-asphalt-left.rgb .\runtimed\data\textures\tr-asphalt-left.rgb
copy .\data\data\textures\tr-asphalt-l_nmm.rgb .\runtimed\data\textures\tr-asphalt-l_nmm.rgb
copy .\data\data\textures\tr-asphalt-l.rgb .\runtimed\data\textures\tr-asphalt-l.rgb
copy .\data\data\textures\tr-asphalt_nmm.rgb .\runtimed\data\textures\tr-asphalt_nmm.rgb
copy .\data\data\textures\tr-asphalt-p_nmm.rgb .\runtimed\data\textures\tr-asphalt-p_nmm.rgb
copy .\data\data\textures\tr-asphalt-p.rgb .\runtimed\data\textures\tr-asphalt-p.rgb
copy .\data\data\textures\tr-asphalt.rgb .\runtimed\data\textures\tr-asphalt.rgb
copy .\data\data\textures\tr-asphalt-right_nmm.rgb .\runtimed\data\textures\tr-asphalt-right_nmm.rgb
copy .\data\data\textures\tr-asphalt-right.rgb .\runtimed\data\textures\tr-asphalt-right.rgb
copy .\data\data\textures\tr-barrier.rgb .\runtimed\data\textures\tr-barrier.rgb
copy .\data\data\textures\tr-concrete_nmm.rgb .\runtimed\data\textures\tr-concrete_nmm.rgb
copy .\data\data\textures\tr-concrete.rgb .\runtimed\data\textures\tr-concrete.rgb
copy .\data\data\textures\tr-dirtb.rgb .\runtimed\data\textures\tr-dirtb.rgb
copy .\data\data\textures\tr-dirt.rgb .\runtimed\data\textures\tr-dirt.rgb
copy .\data\data\textures\tree10.rgb .\runtimed\data\textures\tree10.rgb
copy .\data\data\textures\tree11.rgb .\runtimed\data\textures\tree11.rgb
copy .\data\data\textures\tree12.rgb .\runtimed\data\textures\tree12.rgb
copy .\data\data\textures\tree13.rgb .\runtimed\data\textures\tree13.rgb
copy .\data\data\textures\tree14.rgb .\runtimed\data\textures\tree14.rgb
copy .\data\data\textures\tree15.rgb .\runtimed\data\textures\tree15.rgb
copy .\data\data\textures\tree16.rgb .\runtimed\data\textures\tree16.rgb
copy .\data\data\textures\tree17.rgb .\runtimed\data\textures\tree17.rgb
copy .\data\data\textures\tree1.rgb .\runtimed\data\textures\tree1.rgb
copy .\data\data\textures\tree2.rgb .\runtimed\data\textures\tree2.rgb
copy .\data\data\textures\tree3.rgb .\runtimed\data\textures\tree3.rgb
copy .\data\data\textures\tree4.rgb .\runtimed\data\textures\tree4.rgb
copy .\data\data\textures\tree5.rgb .\runtimed\data\textures\tree5.rgb
copy .\data\data\textures\tree7.rgb .\runtimed\data\textures\tree7.rgb
copy .\data\data\textures\tree8.rgb .\runtimed\data\textures\tree8.rgb
copy .\data\data\textures\tree9.rgb .\runtimed\data\textures\tree9.rgb
copy .\data\data\textures\tr-grass2.rgb .\runtimed\data\textures\tr-grass2.rgb
copy .\data\data\textures\tr-grass.rgb .\runtimed\data\textures\tr-grass.rgb
copy .\data\data\textures\tr-sand2.rgb .\runtimed\data\textures\tr-sand2.rgb
copy .\data\data\textures\tr-sand.rgb .\runtimed\data\textures\tr-sand.rgb
copy .\data\data\textures\tr-snow.rgb .\runtimed\data\textures\tr-snow.rgb
copy .\data\data\textures\tr-water.rgb .\runtimed\data\textures\tr-water.rgb
copy .\data\data\textures\turn100L.rgb .\runtimed\data\textures\turn100L.rgb
copy .\data\data\textures\turn100R.rgb .\runtimed\data\textures\turn100R.rgb
copy .\data\data\textures\turn150L.rgb .\runtimed\data\textures\turn150L.rgb
copy .\data\data\textures\turn150R.rgb .\runtimed\data\textures\turn150R.rgb
copy .\data\data\textures\turn200L.rgb .\runtimed\data\textures\turn200L.rgb
copy .\data\data\textures\turn200R.rgb .\runtimed\data\textures\turn200R.rgb
copy .\data\data\textures\turn300L.rgb .\runtimed\data\textures\turn300L.rgb
copy .\data\data\textures\turn300R.rgb .\runtimed\data\textures\turn300R.rgb
copy .\data\data\textures\turn50L.rgb .\runtimed\data\textures\turn50L.rgb
copy .\data\data\textures\turn50R.rgb .\runtimed\data\textures\turn50R.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\data
call .\create_dir .\runtimed\data\tracks
copy .\data\data\tracks\dirt.xml .\runtimed\data\tracks\dirt.xml
copy .\data\data\tracks\oval.xml .\runtimed\data\tracks\oval.xml
copy .\data\data\tracks\road.xml .\runtimed\data\tracks\road.xml
copy .\data\data\tracks\surfaces.xml .\runtimed\data\tracks\surfaces.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\aalborg
copy .\data\tracks\aalborg\aalborg.xml .\runtimed\tracks\road\aalborg\aalborg.xml
copy .\data\tracks\aalborg\aalborg.ac .\runtimed\tracks\road\aalborg\aalborg.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\oval
call .\create_dir .\runtimed\tracks\oval\a-speedway
copy .\data\tracks\a-speedway\a-speedway.xml .\runtimed\tracks\oval\a-speedway\a-speedway.xml
copy .\data\tracks\a-speedway\background.png .\runtimed\tracks\oval\a-speedway\background.png
copy .\data\tracks\a-speedway\a-speedway.ac .\runtimed\tracks\oval\a-speedway\a-speedway.ac
copy .\data\tracks\a-speedway\a-speedway-relief.ac .\runtimed\tracks\oval\a-speedway\a-speedway-relief.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-1
copy .\data\tracks\dirt-1\dirt-1.xml .\runtimed\tracks\dirt\dirt-1\dirt-1.xml
copy .\data\tracks\dirt-1\background.png .\runtimed\tracks\dirt\dirt-1\background.png
copy .\data\tracks\dirt-1\dirt-1.ac .\runtimed\tracks\dirt\dirt-1\dirt-1.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-2
copy .\data\tracks\dirt-2\dirt-2.xml .\runtimed\tracks\dirt\dirt-2\dirt-2.xml
copy .\data\tracks\dirt-2\background.png .\runtimed\tracks\dirt\dirt-2\background.png
copy .\data\tracks\dirt-2\dirt-2.ac .\runtimed\tracks\dirt\dirt-2\dirt-2.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-3
copy .\data\tracks\dirt-3\dirt-3.xml .\runtimed\tracks\dirt\dirt-3\dirt-3.xml
copy .\data\tracks\dirt-3\background.png .\runtimed\tracks\dirt\dirt-3\background.png
copy .\data\tracks\dirt-3\background2.png .\runtimed\tracks\dirt\dirt-3\background2.png
copy .\data\tracks\dirt-3\dirt-3.ac .\runtimed\tracks\dirt\dirt-3\dirt-3.ac
copy .\data\tracks\dirt-3\dirt-3-relief.ac .\runtimed\tracks\dirt\dirt-3\dirt-3-relief.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-4
copy .\data\tracks\dirt-4\dirt-4.xml .\runtimed\tracks\dirt\dirt-4\dirt-4.xml
copy .\data\tracks\dirt-4\background.png .\runtimed\tracks\dirt\dirt-4\background.png
copy .\data\tracks\dirt-4\dirt-4.ac .\runtimed\tracks\dirt\dirt-4\dirt-4.ac
copy .\data\tracks\dirt-4\dirt-4-relief.ac .\runtimed\tracks\dirt\dirt-4\dirt-4-relief.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-5
copy .\data\tracks\dirt-5\dirt-5.xml .\runtimed\tracks\dirt\dirt-5\dirt-5.xml
copy .\data\tracks\dirt-5\background.png .\runtimed\tracks\dirt\dirt-5\background.png
copy .\data\tracks\dirt-5\dirt-5.ac .\runtimed\tracks\dirt\dirt-5\dirt-5.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\dirt-6
copy .\data\tracks\dirt-6\dirt-6.xml .\runtimed\tracks\dirt\dirt-6\dirt-6.xml
copy .\data\tracks\dirt-6\background.png .\runtimed\tracks\dirt\dirt-6\background.png
copy .\data\tracks\dirt-6\dirt-6.ac .\runtimed\tracks\dirt\dirt-6\dirt-6.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\eroad
copy .\data\tracks\eroad\eroad.xml .\runtimed\tracks\road\eroad\eroad.xml
copy .\data\tracks\eroad\background.png .\runtimed\tracks\road\eroad\background.png
copy .\data\tracks\eroad\eroad.ac .\runtimed\tracks\road\eroad\eroad.ac
copy .\data\tracks\eroad\eroad-relief.ac .\runtimed\tracks\road\eroad\eroad-relief.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\e-track-1
copy .\data\tracks\e-track-1\e-track-1.xml .\runtimed\tracks\road\e-track-1\e-track-1.xml
copy .\data\tracks\e-track-1\background.png .\runtimed\tracks\road\e-track-1\background.png
copy .\data\tracks\e-track-1\e-track-1.ac .\runtimed\tracks\road\e-track-1\e-track-1.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\e-track-2
copy .\data\tracks\e-track-2\e-track-2.xml .\runtimed\tracks\road\e-track-2\e-track-2.xml
copy .\data\tracks\e-track-2\background.png .\runtimed\tracks\road\e-track-2\background.png
copy .\data\tracks\e-track-2\e-track-2.ac .\runtimed\tracks\road\e-track-2\e-track-2.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\e-track-3
copy .\data\tracks\e-track-3\e-track-3.xml .\runtimed\tracks\road\e-track-3\e-track-3.xml
copy .\data\tracks\e-track-3\background.png .\runtimed\tracks\road\e-track-3\background.png
copy .\data\tracks\e-track-3\env.rgb .\runtimed\tracks\road\e-track-3\env.rgb
copy .\data\tracks\e-track-3\e-track-3.ac .\runtimed\tracks\road\e-track-3\e-track-3.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\e-track-4
copy .\data\tracks\e-track-4\e-track-4.xml .\runtimed\tracks\road\e-track-4\e-track-4.xml
copy .\data\tracks\e-track-4\background.png .\runtimed\tracks\road\e-track-4\background.png
copy .\data\tracks\e-track-4\e-track-4.ac .\runtimed\tracks\road\e-track-4\e-track-4.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\oval
call .\create_dir .\runtimed\tracks\oval\e-track-5
copy .\data\tracks\e-track-5\e-track-5.xml .\runtimed\tracks\oval\e-track-5\e-track-5.xml
copy .\data\tracks\e-track-5\background.png .\runtimed\tracks\oval\e-track-5\background.png
copy .\data\tracks\e-track-5\e-track-5.ac .\runtimed\tracks\oval\e-track-5\e-track-5.ac
copy .\data\tracks\e-track-5\e-track-5-relief.ac .\runtimed\tracks\oval\e-track-5\e-track-5-relief.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\e-track-6
copy .\data\tracks\e-track-6\e-track-6.xml .\runtimed\tracks\road\e-track-6\e-track-6.xml
copy .\data\tracks\e-track-6\background.png .\runtimed\tracks\road\e-track-6\background.png
copy .\data\tracks\e-track-6\e-track-6.ac .\runtimed\tracks\road\e-track-6\e-track-6.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\oval
call .\create_dir .\runtimed\tracks\oval\g-track-1
copy .\data\tracks\g-track-1\g-track-1.xml .\runtimed\tracks\oval\g-track-1\g-track-1.xml
copy .\data\tracks\g-track-1\g-track-1.ac .\runtimed\tracks\oval\g-track-1\g-track-1.ac
copy .\data\tracks\g-track-1\background.png .\runtimed\tracks\oval\g-track-1\background.png
copy .\data\tracks\g-track-1\alltree2.rgb .\runtimed\tracks\oval\g-track-1\alltree2.rgb
copy .\data\tracks\g-track-1\alltree.rgb .\runtimed\tracks\oval\g-track-1\alltree.rgb
copy .\data\tracks\g-track-1\asphalt2.rgb .\runtimed\tracks\oval\g-track-1\asphalt2.rgb
copy .\data\tracks\g-track-1\asphalt3.rgb .\runtimed\tracks\oval\g-track-1\asphalt3.rgb
copy .\data\tracks\g-track-1\env.rgb .\runtimed\tracks\oval\g-track-1\env.rgb
copy .\data\tracks\g-track-1\grassg1.rgb .\runtimed\tracks\oval\g-track-1\grassg1.rgb
copy .\data\tracks\g-track-1\grassg2.rgb .\runtimed\tracks\oval\g-track-1\grassg2.rgb
copy .\data\tracks\g-track-1\grassg3.rgb .\runtimed\tracks\oval\g-track-1\grassg3.rgb
copy .\data\tracks\g-track-1\rock2.rgb .\runtimed\tracks\oval\g-track-1\rock2.rgb
copy .\data\tracks\g-track-1\rock3.rgb .\runtimed\tracks\oval\g-track-1\rock3.rgb
copy .\data\tracks\g-track-1\texte1.rgb .\runtimed\tracks\oval\g-track-1\texte1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\oval
call .\create_dir .\runtimed\tracks\oval\michigan
copy .\data\tracks\michigan\michigan.xml .\runtimed\tracks\oval\\michigan\michigan.xml
copy .\data\tracks\michigan\background.png .\runtimed\tracks\oval\\michigan\background.png
copy .\data\tracks\michigan\michigan.ac .\runtimed\tracks\oval\\michigan\michigan.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\mixed-1
copy .\data\tracks\mixed-1\mixed-1.xml .\runtimed\tracks\dirt\mixed-1\mixed-1.xml
copy .\data\tracks\mixed-1\mixed-1.ac .\runtimed\tracks\dirt\mixed-1\mixed-1.ac
copy .\data\tracks\mixed-1\background.png .\runtimed\tracks\dirt\mixed-1\background.png
copy .\data\tracks\mixed-1\env1.png .\runtimed\tracks\dirt\mixed-1\env1.png

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\dirt
call .\create_dir .\runtimed\tracks\dirt\mixed-2
copy .\data\tracks\mixed-2\mixed-2.xml .\runtimed\tracks\dirt\mixed-2\mixed-2.xml
copy .\data\tracks\mixed-2\background.png .\runtimed\tracks\dirt\mixed-2\background.png
copy .\data\tracks\mixed-2\env.rgb .\runtimed\tracks\dirt\mixed-2\env.rgb
copy .\data\tracks\mixed-2\mixed-2.ac .\runtimed\tracks\dirt\mixed-2\mixed-2.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tracks
call .\create_dir .\runtimed\tracks\road
call .\create_dir .\runtimed\tracks\road\wheel-1
copy .\data\tracks\wheel-1\wheel-1.xml .\runtimed\tracks\road\wheel-1\wheel-1.xml
copy .\data\tracks\wheel-1\background.png .\runtimed\tracks\road\wheel-1\background.png
copy .\data\tracks\wheel-1\env.rgb .\runtimed\tracks\road\wheel-1\env.rgb
copy .\data\tracks\wheel-1\wheel-1.ac .\runtimed\tracks\road\wheel-1\wheel-1.ac

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\1
copy .\src\drivers\berniw\1\cg-nascar-rwd.rgb .\runtimed\drivers\berniw\1\cg-nascar-rwd.rgb
copy .\src\drivers\berniw\1\aalborg.xml .\runtimed\drivers\berniw\1\aalborg.xml
copy .\src\drivers\berniw\1\a-speedway.xml .\runtimed\drivers\berniw\1\a-speedway.xml
copy .\src\drivers\berniw\1\dirt-1.xml .\runtimed\drivers\berniw\1\dirt-1.xml
copy .\src\drivers\berniw\1\dirt-2.xml .\runtimed\drivers\berniw\1\dirt-2.xml
copy .\src\drivers\berniw\1\dirt-3.xml .\runtimed\drivers\berniw\1\dirt-3.xml
copy .\src\drivers\berniw\1\dirt-4.xml .\runtimed\drivers\berniw\1\dirt-4.xml
copy .\src\drivers\berniw\1\dirt-5.xml .\runtimed\drivers\berniw\1\dirt-5.xml
copy .\src\drivers\berniw\1\dirt-6.xml .\runtimed\drivers\berniw\1\dirt-6.xml
copy .\src\drivers\berniw\1\eroad.xml .\runtimed\drivers\berniw\1\eroad.xml
copy .\src\drivers\berniw\1\e-track-1.xml .\runtimed\drivers\berniw\1\e-track-1.xml
copy .\src\drivers\berniw\1\e-track-2.xml .\runtimed\drivers\berniw\1\e-track-2.xml
copy .\src\drivers\berniw\1\e-track-3.xml .\runtimed\drivers\berniw\1\e-track-3.xml
copy .\src\drivers\berniw\1\e-track-4.xml .\runtimed\drivers\berniw\1\e-track-4.xml
copy .\src\drivers\berniw\1\e-track-5.xml .\runtimed\drivers\berniw\1\e-track-5.xml
copy .\src\drivers\berniw\1\e-track-6.xml .\runtimed\drivers\berniw\1\e-track-6.xml
copy .\src\drivers\berniw\1\g-track-1.xml .\runtimed\drivers\berniw\1\g-track-1.xml
copy .\src\drivers\berniw\1\michigan.xml .\runtimed\drivers\berniw\1\michigan.xml
copy .\src\drivers\berniw\1\mixed-1.xml .\runtimed\drivers\berniw\1\mixed-1.xml
copy .\src\drivers\berniw\1\mixed-2.xml .\runtimed\drivers\berniw\1\mixed-2.xml
copy .\src\drivers\berniw\1\wheel-1.xml .\runtimed\drivers\berniw\1\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\10
copy .\src\drivers\berniw\10\buggy.rgb .\runtimed\drivers\berniw\10\buggy.rgb
copy .\src\drivers\berniw\10\aalborg.xml .\runtimed\drivers\berniw\10\aalborg.xml
copy .\src\drivers\berniw\10\a-speedway.xml .\runtimed\drivers\berniw\10\a-speedway.xml
copy .\src\drivers\berniw\10\dirt-1.xml .\runtimed\drivers\berniw\10\dirt-1.xml
copy .\src\drivers\berniw\10\dirt-2.xml .\runtimed\drivers\berniw\10\dirt-2.xml
copy .\src\drivers\berniw\10\dirt-3.xml .\runtimed\drivers\berniw\10\dirt-3.xml
copy .\src\drivers\berniw\10\dirt-4.xml .\runtimed\drivers\berniw\10\dirt-4.xml
copy .\src\drivers\berniw\10\dirt-5.xml .\runtimed\drivers\berniw\10\dirt-5.xml
copy .\src\drivers\berniw\10\dirt-6.xml .\runtimed\drivers\berniw\10\dirt-6.xml
copy .\src\drivers\berniw\10\eroad.xml .\runtimed\drivers\berniw\10\eroad.xml
copy .\src\drivers\berniw\10\e-track-1.xml .\runtimed\drivers\berniw\10\e-track-1.xml
copy .\src\drivers\berniw\10\e-track-2.xml .\runtimed\drivers\berniw\10\e-track-2.xml
copy .\src\drivers\berniw\10\e-track-3.xml .\runtimed\drivers\berniw\10\e-track-3.xml
copy .\src\drivers\berniw\10\e-track-4.xml .\runtimed\drivers\berniw\10\e-track-4.xml
copy .\src\drivers\berniw\10\e-track-5.xml .\runtimed\drivers\berniw\10\e-track-5.xml
copy .\src\drivers\berniw\10\e-track-6.xml .\runtimed\drivers\berniw\10\e-track-6.xml
copy .\src\drivers\berniw\10\g-track-1.xml .\runtimed\drivers\berniw\10\g-track-1.xml
copy .\src\drivers\berniw\10\michigan.xml .\runtimed\drivers\berniw\10\michigan.xml
copy .\src\drivers\berniw\10\mixed-1.xml .\runtimed\drivers\berniw\10\mixed-1.xml
copy .\src\drivers\berniw\10\mixed-2.xml .\runtimed\drivers\berniw\10\mixed-2.xml
copy .\src\drivers\berniw\10\wheel-1.xml .\runtimed\drivers\berniw\10\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\2
copy .\src\drivers\berniw\2\cg-nascar-rwd.rgb .\runtimed\drivers\berniw\2\cg-nascar-rwd.rgb
copy .\src\drivers\berniw\2\aalborg.xml .\runtimed\drivers\berniw\2\aalborg.xml
copy .\src\drivers\berniw\2\a-speedway.xml .\runtimed\drivers\berniw\2\a-speedway.xml
copy .\src\drivers\berniw\2\dirt-1.xml .\runtimed\drivers\berniw\2\dirt-1.xml
copy .\src\drivers\berniw\2\dirt-2.xml .\runtimed\drivers\berniw\2\dirt-2.xml
copy .\src\drivers\berniw\2\dirt-3.xml .\runtimed\drivers\berniw\2\dirt-3.xml
copy .\src\drivers\berniw\2\dirt-4.xml .\runtimed\drivers\berniw\2\dirt-4.xml
copy .\src\drivers\berniw\2\dirt-5.xml .\runtimed\drivers\berniw\2\dirt-5.xml
copy .\src\drivers\berniw\2\dirt-6.xml .\runtimed\drivers\berniw\2\dirt-6.xml
copy .\src\drivers\berniw\2\eroad.xml .\runtimed\drivers\berniw\2\eroad.xml
copy .\src\drivers\berniw\2\e-track-1.xml .\runtimed\drivers\berniw\2\e-track-1.xml
copy .\src\drivers\berniw\2\e-track-2.xml .\runtimed\drivers\berniw\2\e-track-2.xml
copy .\src\drivers\berniw\2\e-track-3.xml .\runtimed\drivers\berniw\2\e-track-3.xml
copy .\src\drivers\berniw\2\e-track-4.xml .\runtimed\drivers\berniw\2\e-track-4.xml
copy .\src\drivers\berniw\2\e-track-5.xml .\runtimed\drivers\berniw\2\e-track-5.xml
copy .\src\drivers\berniw\2\e-track-6.xml .\runtimed\drivers\berniw\2\e-track-6.xml
copy .\src\drivers\berniw\2\g-track-1.xml .\runtimed\drivers\berniw\2\g-track-1.xml
copy .\src\drivers\berniw\2\michigan.xml .\runtimed\drivers\berniw\2\michigan.xml
copy .\src\drivers\berniw\2\mixed-1.xml .\runtimed\drivers\berniw\2\mixed-1.xml
copy .\src\drivers\berniw\2\mixed-2.xml .\runtimed\drivers\berniw\2\mixed-2.xml
copy .\src\drivers\berniw\2\wheel-1.xml .\runtimed\drivers\berniw\2\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\3
copy .\src\drivers\berniw\3\acura-nsx-sz.rgb .\runtimed\drivers\berniw\3\acura-nsx-sz.rgb
copy .\src\drivers\berniw\3\aalborg.xml .\runtimed\drivers\berniw\3\aalborg.xml
copy .\src\drivers\berniw\3\a-speedway.xml .\runtimed\drivers\berniw\3\a-speedway.xml
copy .\src\drivers\berniw\3\dirt-1.xml .\runtimed\drivers\berniw\3\dirt-1.xml
copy .\src\drivers\berniw\3\dirt-2.xml .\runtimed\drivers\berniw\3\dirt-2.xml
copy .\src\drivers\berniw\3\dirt-3.xml .\runtimed\drivers\berniw\3\dirt-3.xml
copy .\src\drivers\berniw\3\dirt-4.xml .\runtimed\drivers\berniw\3\dirt-4.xml
copy .\src\drivers\berniw\3\dirt-5.xml .\runtimed\drivers\berniw\3\dirt-5.xml
copy .\src\drivers\berniw\3\dirt-6.xml .\runtimed\drivers\berniw\3\dirt-6.xml
copy .\src\drivers\berniw\3\eroad.xml .\runtimed\drivers\berniw\3\eroad.xml
copy .\src\drivers\berniw\3\e-track-1.xml .\runtimed\drivers\berniw\3\e-track-1.xml
copy .\src\drivers\berniw\3\e-track-2.xml .\runtimed\drivers\berniw\3\e-track-2.xml
copy .\src\drivers\berniw\3\e-track-3.xml .\runtimed\drivers\berniw\3\e-track-3.xml
copy .\src\drivers\berniw\3\e-track-4.xml .\runtimed\drivers\berniw\3\e-track-4.xml
copy .\src\drivers\berniw\3\e-track-5.xml .\runtimed\drivers\berniw\3\e-track-5.xml
copy .\src\drivers\berniw\3\e-track-6.xml .\runtimed\drivers\berniw\3\e-track-6.xml
copy .\src\drivers\berniw\3\g-track-1.xml .\runtimed\drivers\berniw\3\g-track-1.xml
copy .\src\drivers\berniw\3\michigan.xml .\runtimed\drivers\berniw\3\michigan.xml
copy .\src\drivers\berniw\3\mixed-1.xml .\runtimed\drivers\berniw\3\mixed-1.xml
copy .\src\drivers\berniw\3\mixed-2.xml .\runtimed\drivers\berniw\3\mixed-2.xml
copy .\src\drivers\berniw\3\wheel-1.xml .\runtimed\drivers\berniw\3\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\4
copy .\src\drivers\berniw\4\viper-gts-r.rgb .\runtimed\drivers\berniw\4\viper-gts-r.rgb
copy .\src\drivers\berniw\4\aalborg.xml .\runtimed\drivers\berniw\4\aalborg.xml
copy .\src\drivers\berniw\4\a-speedway.xml .\runtimed\drivers\berniw\4\a-speedway.xml
copy .\src\drivers\berniw\4\dirt-1.xml .\runtimed\drivers\berniw\4\dirt-1.xml
copy .\src\drivers\berniw\4\dirt-2.xml .\runtimed\drivers\berniw\4\dirt-2.xml
copy .\src\drivers\berniw\4\dirt-3.xml .\runtimed\drivers\berniw\4\dirt-3.xml
copy .\src\drivers\berniw\4\dirt-4.xml .\runtimed\drivers\berniw\4\dirt-4.xml
copy .\src\drivers\berniw\4\dirt-5.xml .\runtimed\drivers\berniw\4\dirt-5.xml
copy .\src\drivers\berniw\4\dirt-6.xml .\runtimed\drivers\berniw\4\dirt-6.xml
copy .\src\drivers\berniw\4\eroad.xml .\runtimed\drivers\berniw\4\eroad.xml
copy .\src\drivers\berniw\4\e-track-1.xml .\runtimed\drivers\berniw\4\e-track-1.xml
copy .\src\drivers\berniw\4\e-track-2.xml .\runtimed\drivers\berniw\4\e-track-2.xml
copy .\src\drivers\berniw\4\e-track-3.xml .\runtimed\drivers\berniw\4\e-track-3.xml
copy .\src\drivers\berniw\4\e-track-4.xml .\runtimed\drivers\berniw\4\e-track-4.xml
copy .\src\drivers\berniw\4\e-track-5.xml .\runtimed\drivers\berniw\4\e-track-5.xml
copy .\src\drivers\berniw\4\e-track-6.xml .\runtimed\drivers\berniw\4\e-track-6.xml
copy .\src\drivers\berniw\4\g-track-1.xml .\runtimed\drivers\berniw\4\g-track-1.xml
copy .\src\drivers\berniw\4\michigan.xml .\runtimed\drivers\berniw\4\michigan.xml
copy .\src\drivers\berniw\4\mixed-1.xml .\runtimed\drivers\berniw\4\mixed-1.xml
copy .\src\drivers\berniw\4\mixed-2.xml .\runtimed\drivers\berniw\4\mixed-2.xml
copy .\src\drivers\berniw\4\wheel-1.xml .\runtimed\drivers\berniw\4\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\5
copy .\src\drivers\berniw\5\cg-nascar-rwd.rgb .\runtimed\drivers\berniw\5\cg-nascar-rwd.rgb
copy .\src\drivers\berniw\5\aalborg.xml .\runtimed\drivers\berniw\5\aalborg.xml
copy .\src\drivers\berniw\5\a-speedway.xml .\runtimed\drivers\berniw\5\a-speedway.xml
copy .\src\drivers\berniw\5\dirt-1.xml .\runtimed\drivers\berniw\5\dirt-1.xml
copy .\src\drivers\berniw\5\dirt-2.xml .\runtimed\drivers\berniw\5\dirt-2.xml
copy .\src\drivers\berniw\5\dirt-3.xml .\runtimed\drivers\berniw\5\dirt-3.xml
copy .\src\drivers\berniw\5\dirt-4.xml .\runtimed\drivers\berniw\5\dirt-4.xml
copy .\src\drivers\berniw\5\dirt-5.xml .\runtimed\drivers\berniw\5\dirt-5.xml
copy .\src\drivers\berniw\5\dirt-6.xml .\runtimed\drivers\berniw\5\dirt-6.xml
copy .\src\drivers\berniw\5\eroad.xml .\runtimed\drivers\berniw\5\eroad.xml
copy .\src\drivers\berniw\5\e-track-1.xml .\runtimed\drivers\berniw\5\e-track-1.xml
copy .\src\drivers\berniw\5\e-track-2.xml .\runtimed\drivers\berniw\5\e-track-2.xml
copy .\src\drivers\berniw\5\e-track-3.xml .\runtimed\drivers\berniw\5\e-track-3.xml
copy .\src\drivers\berniw\5\e-track-4.xml .\runtimed\drivers\berniw\5\e-track-4.xml
copy .\src\drivers\berniw\5\e-track-5.xml .\runtimed\drivers\berniw\5\e-track-5.xml
copy .\src\drivers\berniw\5\e-track-6.xml .\runtimed\drivers\berniw\5\e-track-6.xml
copy .\src\drivers\berniw\5\g-track-1.xml .\runtimed\drivers\berniw\5\g-track-1.xml
copy .\src\drivers\berniw\5\michigan.xml .\runtimed\drivers\berniw\5\michigan.xml
copy .\src\drivers\berniw\5\mixed-1.xml .\runtimed\drivers\berniw\5\mixed-1.xml
copy .\src\drivers\berniw\5\mixed-2.xml .\runtimed\drivers\berniw\5\mixed-2.xml
copy .\src\drivers\berniw\5\wheel-1.xml .\runtimed\drivers\berniw\5\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\6
copy .\src\drivers\berniw\6\155-DTM.rgb .\runtimed\drivers\berniw\6\155-DTM.rgb
copy .\src\drivers\berniw\6\aalborg.xml .\runtimed\drivers\berniw\6\aalborg.xml
copy .\src\drivers\berniw\6\a-speedway.xml .\runtimed\drivers\berniw\6\a-speedway.xml
copy .\src\drivers\berniw\6\dirt-1.xml .\runtimed\drivers\berniw\6\dirt-1.xml
copy .\src\drivers\berniw\6\dirt-2.xml .\runtimed\drivers\berniw\6\dirt-2.xml
copy .\src\drivers\berniw\6\dirt-3.xml .\runtimed\drivers\berniw\6\dirt-3.xml
copy .\src\drivers\berniw\6\dirt-4.xml .\runtimed\drivers\berniw\6\dirt-4.xml
copy .\src\drivers\berniw\6\dirt-5.xml .\runtimed\drivers\berniw\6\dirt-5.xml
copy .\src\drivers\berniw\6\dirt-6.xml .\runtimed\drivers\berniw\6\dirt-6.xml
copy .\src\drivers\berniw\6\eroad.xml .\runtimed\drivers\berniw\6\eroad.xml
copy .\src\drivers\berniw\6\e-track-1.xml .\runtimed\drivers\berniw\6\e-track-1.xml
copy .\src\drivers\berniw\6\e-track-2.xml .\runtimed\drivers\berniw\6\e-track-2.xml
copy .\src\drivers\berniw\6\e-track-3.xml .\runtimed\drivers\berniw\6\e-track-3.xml
copy .\src\drivers\berniw\6\e-track-4.xml .\runtimed\drivers\berniw\6\e-track-4.xml
copy .\src\drivers\berniw\6\e-track-5.xml .\runtimed\drivers\berniw\6\e-track-5.xml
copy .\src\drivers\berniw\6\e-track-6.xml .\runtimed\drivers\berniw\6\e-track-6.xml
copy .\src\drivers\berniw\6\g-track-1.xml .\runtimed\drivers\berniw\6\g-track-1.xml
copy .\src\drivers\berniw\6\michigan.xml .\runtimed\drivers\berniw\6\michigan.xml
copy .\src\drivers\berniw\6\mixed-1.xml .\runtimed\drivers\berniw\6\mixed-1.xml
copy .\src\drivers\berniw\6\mixed-2.xml .\runtimed\drivers\berniw\6\mixed-2.xml
copy .\src\drivers\berniw\6\wheel-1.xml .\runtimed\drivers\berniw\6\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\7
copy .\src\drivers\berniw\7\lotus-gt1.rgb .\runtimed\drivers\berniw\7\lotus-gt1.rgb
copy .\src\drivers\berniw\7\aalborg.xml .\runtimed\drivers\berniw\7\aalborg.xml
copy .\src\drivers\berniw\7\a-speedway.xml .\runtimed\drivers\berniw\7\a-speedway.xml
copy .\src\drivers\berniw\7\dirt-1.xml .\runtimed\drivers\berniw\7\dirt-1.xml
copy .\src\drivers\berniw\7\dirt-2.xml .\runtimed\drivers\berniw\7\dirt-2.xml
copy .\src\drivers\berniw\7\dirt-3.xml .\runtimed\drivers\berniw\7\dirt-3.xml
copy .\src\drivers\berniw\7\dirt-4.xml .\runtimed\drivers\berniw\7\dirt-4.xml
copy .\src\drivers\berniw\7\dirt-5.xml .\runtimed\drivers\berniw\7\dirt-5.xml
copy .\src\drivers\berniw\7\dirt-6.xml .\runtimed\drivers\berniw\7\dirt-6.xml
copy .\src\drivers\berniw\7\eroad.xml .\runtimed\drivers\berniw\7\eroad.xml
copy .\src\drivers\berniw\7\e-track-1.xml .\runtimed\drivers\berniw\7\e-track-1.xml
copy .\src\drivers\berniw\7\e-track-2.xml .\runtimed\drivers\berniw\7\e-track-2.xml
copy .\src\drivers\berniw\7\e-track-3.xml .\runtimed\drivers\berniw\7\e-track-3.xml
copy .\src\drivers\berniw\7\e-track-4.xml .\runtimed\drivers\berniw\7\e-track-4.xml
copy .\src\drivers\berniw\7\e-track-5.xml .\runtimed\drivers\berniw\7\e-track-5.xml
copy .\src\drivers\berniw\7\e-track-6.xml .\runtimed\drivers\berniw\7\e-track-6.xml
copy .\src\drivers\berniw\7\g-track-1.xml .\runtimed\drivers\berniw\7\g-track-1.xml
copy .\src\drivers\berniw\7\michigan.xml .\runtimed\drivers\berniw\7\michigan.xml
copy .\src\drivers\berniw\7\mixed-1.xml .\runtimed\drivers\berniw\7\mixed-1.xml
copy .\src\drivers\berniw\7\mixed-2.xml .\runtimed\drivers\berniw\7\mixed-2.xml
copy .\src\drivers\berniw\7\wheel-1.xml .\runtimed\drivers\berniw\7\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\8
copy .\src\drivers\berniw\8\corvette.rgb .\runtimed\drivers\berniw\8\corvette.rgb
copy .\src\drivers\berniw\8\aalborg.xml .\runtimed\drivers\berniw\8\aalborg.xml
copy .\src\drivers\berniw\8\a-speedway.xml .\runtimed\drivers\berniw\8\a-speedway.xml
copy .\src\drivers\berniw\8\dirt-1.xml .\runtimed\drivers\berniw\8\dirt-1.xml
copy .\src\drivers\berniw\8\dirt-2.xml .\runtimed\drivers\berniw\8\dirt-2.xml
copy .\src\drivers\berniw\8\dirt-3.xml .\runtimed\drivers\berniw\8\dirt-3.xml
copy .\src\drivers\berniw\8\dirt-4.xml .\runtimed\drivers\berniw\8\dirt-4.xml
copy .\src\drivers\berniw\8\dirt-5.xml .\runtimed\drivers\berniw\8\dirt-5.xml
copy .\src\drivers\berniw\8\dirt-6.xml .\runtimed\drivers\berniw\8\dirt-6.xml
copy .\src\drivers\berniw\8\eroad.xml .\runtimed\drivers\berniw\8\eroad.xml
copy .\src\drivers\berniw\8\e-track-1.xml .\runtimed\drivers\berniw\8\e-track-1.xml
copy .\src\drivers\berniw\8\e-track-2.xml .\runtimed\drivers\berniw\8\e-track-2.xml
copy .\src\drivers\berniw\8\e-track-3.xml .\runtimed\drivers\berniw\8\e-track-3.xml
copy .\src\drivers\berniw\8\e-track-4.xml .\runtimed\drivers\berniw\8\e-track-4.xml
copy .\src\drivers\berniw\8\e-track-5.xml .\runtimed\drivers\berniw\8\e-track-5.xml
copy .\src\drivers\berniw\8\e-track-6.xml .\runtimed\drivers\berniw\8\e-track-6.xml
copy .\src\drivers\berniw\8\g-track-1.xml .\runtimed\drivers\berniw\8\g-track-1.xml
copy .\src\drivers\berniw\8\michigan.xml .\runtimed\drivers\berniw\8\michigan.xml
copy .\src\drivers\berniw\8\mixed-1.xml .\runtimed\drivers\berniw\8\mixed-1.xml
copy .\src\drivers\berniw\8\mixed-2.xml .\runtimed\drivers\berniw\8\mixed-2.xml
copy .\src\drivers\berniw\8\wheel-1.xml .\runtimed\drivers\berniw\8\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
call .\create_dir .\runtimed\drivers\berniw\9
copy .\src\drivers\berniw\9\mclaren-f1.rgb .\runtimed\drivers\berniw\9\mclaren-f1.rgb
copy .\src\drivers\berniw\9\aalborg.xml .\runtimed\drivers\berniw\9\aalborg.xml
copy .\src\drivers\berniw\9\a-speedway.xml .\runtimed\drivers\berniw\9\a-speedway.xml
copy .\src\drivers\berniw\9\dirt-1.xml .\runtimed\drivers\berniw\9\dirt-1.xml
copy .\src\drivers\berniw\9\dirt-2.xml .\runtimed\drivers\berniw\9\dirt-2.xml
copy .\src\drivers\berniw\9\dirt-3.xml .\runtimed\drivers\berniw\9\dirt-3.xml
copy .\src\drivers\berniw\9\dirt-4.xml .\runtimed\drivers\berniw\9\dirt-4.xml
copy .\src\drivers\berniw\9\dirt-5.xml .\runtimed\drivers\berniw\9\dirt-5.xml
copy .\src\drivers\berniw\9\dirt-6.xml .\runtimed\drivers\berniw\9\dirt-6.xml
copy .\src\drivers\berniw\9\eroad.xml .\runtimed\drivers\berniw\9\eroad.xml
copy .\src\drivers\berniw\9\e-track-1.xml .\runtimed\drivers\berniw\9\e-track-1.xml
copy .\src\drivers\berniw\9\e-track-2.xml .\runtimed\drivers\berniw\9\e-track-2.xml
copy .\src\drivers\berniw\9\e-track-3.xml .\runtimed\drivers\berniw\9\e-track-3.xml
copy .\src\drivers\berniw\9\e-track-4.xml .\runtimed\drivers\berniw\9\e-track-4.xml
copy .\src\drivers\berniw\9\e-track-5.xml .\runtimed\drivers\berniw\9\e-track-5.xml
copy .\src\drivers\berniw\9\e-track-6.xml .\runtimed\drivers\berniw\9\e-track-6.xml
copy .\src\drivers\berniw\9\g-track-1.xml .\runtimed\drivers\berniw\9\g-track-1.xml
copy .\src\drivers\berniw\9\michigan.xml .\runtimed\drivers\berniw\9\michigan.xml
copy .\src\drivers\berniw\9\mixed-1.xml .\runtimed\drivers\berniw\9\mixed-1.xml
copy .\src\drivers\berniw\9\mixed-2.xml .\runtimed\drivers\berniw\9\mixed-2.xml
copy .\src\drivers\berniw\9\wheel-1.xml .\runtimed\drivers\berniw\9\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw
copy .\src\drivers\berniw\berniw.xml .\runtimed\drivers\berniw\berniw.xml
copy .\src\drivers\berniw\logo.rgb .\runtimed\drivers\berniw\logo.rgb
copy .\src\drivers\berniw\parameter.dat .\runtimed\drivers\berniw\parameter.dat
copy .\src\drivers\berniw\intsinsqr.dat .\runtimed\drivers\berniw\intsinsqr.dat
copy .\src\drivers\berniw\intcossqr.dat .\runtimed\drivers\berniw\intcossqr.dat

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\berniw

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\cylos1
call .\create_dir .\runtimed\drivers\cylos1\tracksdata
copy .\src\drivers\cylos1\tracksdata\car_e-track-3.xml .\runtimed\drivers\cylos1\tracksdata\car_e-track-3.xml
copy .\src\drivers\cylos1\tracksdata\car_lemans.xml .\runtimed\drivers\cylos1\tracksdata\car_lemans.xml
copy .\src\drivers\cylos1\tracksdata\car_test-1.xml .\runtimed\drivers\cylos1\tracksdata\car_test-1.xml
copy .\src\drivers\cylos1\tracksdata\lemans.xml .\runtimed\drivers\cylos1\tracksdata\lemans.xml
copy .\src\drivers\cylos1\tracksdata\michigan.xml .\runtimed\drivers\cylos1\tracksdata\michigan.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\cylos1
copy .\src\drivers\cylos1\cylos1.xml .\runtimed\drivers\cylos1\cylos1.xml
copy .\src\drivers\cylos1\car1.xml .\runtimed\drivers\cylos1\car1.xml
copy .\src\drivers\cylos1\cg-nascar-rwd.rgb .\runtimed\drivers\cylos1\cg-nascar-rwd.rgb
copy .\src\drivers\cylos1\logo.rgb .\runtimed\drivers\cylos1\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\cylos1

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\1
copy .\src\drivers\damned\1\car.xml .\runtimed\drivers\damned\1\car.xml
copy .\src\drivers\damned\1\buggy.rgb .\runtimed\drivers\damned\1\buggy.rgb
copy .\src\drivers\damned\1\logo.rgb .\runtimed\drivers\damned\1\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\10
copy .\src\drivers\damned\10\car.xml .\runtimed\drivers\damned\10\car.xml
copy .\src\drivers\damned\10\logo.rgb .\runtimed\drivers\damned\10\logo.rgb
copy .\src\drivers\damned\10\155-DTM.rgb .\runtimed\drivers\damned\10\155-DTM.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\2
copy .\src\drivers\damned\2\car.xml .\runtimed\drivers\damned\2\car.xml
copy .\src\drivers\damned\2\buggy.rgb .\runtimed\drivers\damned\2\buggy.rgb
copy .\src\drivers\damned\2\logo.rgb .\runtimed\drivers\damned\2\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\3
copy .\src\drivers\damned\3\p406.rgb .\runtimed\drivers\damned\3\p406.rgb
copy .\src\drivers\damned\3\car.xml .\runtimed\drivers\damned\3\car.xml
copy .\src\drivers\damned\3\logo.rgb .\runtimed\drivers\damned\3\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\4
copy .\src\drivers\damned\4\p406.rgb .\runtimed\drivers\damned\4\p406.rgb
copy .\src\drivers\damned\4\car.xml .\runtimed\drivers\damned\4\car.xml
copy .\src\drivers\damned\4\torcs.rgb .\runtimed\drivers\damned\4\torcs.rgb
copy .\src\drivers\damned\4\logo.rgb .\runtimed\drivers\damned\4\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\5
copy .\src\drivers\damned\5\car.xml .\runtimed\drivers\damned\5\car.xml
copy .\src\drivers\damned\5\acura-nsx-sz.rgb .\runtimed\drivers\damned\5\acura-nsx-sz.rgb
copy .\src\drivers\damned\5\logo.rgb .\runtimed\drivers\damned\5\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\6
copy .\src\drivers\damned\6\acura-nsx-sz.rgb .\runtimed\drivers\damned\6\acura-nsx-sz.rgb
copy .\src\drivers\damned\6\car.xml .\runtimed\drivers\damned\6\car.xml
copy .\src\drivers\damned\6\logo.rgb .\runtimed\drivers\damned\6\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\7
copy .\src\drivers\damned\7\porsche-gt1.rgb .\runtimed\drivers\damned\7\porsche-gt1.rgb
copy .\src\drivers\damned\7\logo.rgb .\runtimed\drivers\damned\7\logo.rgb
copy .\src\drivers\damned\7\car.xml .\runtimed\drivers\damned\7\car.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\8
copy .\src\drivers\damned\8\car.xml .\runtimed\drivers\damned\8\car.xml
copy .\src\drivers\damned\8\logo.rgb .\runtimed\drivers\damned\8\logo.rgb
copy .\src\drivers\damned\8\mclaren-f1.rgb .\runtimed\drivers\damned\8\mclaren-f1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
call .\create_dir .\runtimed\drivers\damned\9
copy .\src\drivers\damned\9\logo.rgb .\runtimed\drivers\damned\9\logo.rgb
copy .\src\drivers\damned\9\car.xml .\runtimed\drivers\damned\9\car.xml
copy .\src\drivers\damned\9\360-modena.rgb .\runtimed\drivers\damned\9\360-modena.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned
copy .\src\drivers\damned\damned.xml .\runtimed\drivers\damned\damned.xml
copy .\src\drivers\damned\car1.xml .\runtimed\drivers\damned\car1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\damned

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\cg-gt-rwd
copy .\src\drivers\human\cg-gt-rwd\skin.png .\runtimed\drivers\human\cg-gt-rwd\skin.png
copy .\src\drivers\human\cg-gt-rwd\skin.rgb .\runtimed\drivers\human\cg-gt-rwd\skin.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-1
copy .\src\drivers\human\tracks\dirt-1\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-1\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-2
copy .\src\drivers\human\tracks\dirt-2\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-2\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-3
copy .\src\drivers\human\tracks\dirt-3\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-3\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-4
copy .\src\drivers\human\tracks\dirt-4\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-4\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-5
copy .\src\drivers\human\tracks\dirt-5\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-5\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\dirt-6
copy .\src\drivers\human\tracks\dirt-6\car-torcs.xml .\runtimed\drivers\human\tracks\dirt-6\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-1
copy .\src\drivers\human\tracks\e-track-1\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-1\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-2
copy .\src\drivers\human\tracks\e-track-2\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-2\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-3
copy .\src\drivers\human\tracks\e-track-3\car-porsche-gt1.xml .\runtimed\drivers\human\tracks\e-track-3\car-porsche-gt1.xml
copy .\src\drivers\human\tracks\e-track-3\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-3\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-4
copy .\src\drivers\human\tracks\e-track-4\car-360-modena.xml .\runtimed\drivers\human\tracks\e-track-4\car-360-modena.xml
copy .\src\drivers\human\tracks\e-track-4\car-mclaren-f1.xml .\runtimed\drivers\human\tracks\e-track-4\car-mclaren-f1.xml
copy .\src\drivers\human\tracks\e-track-4\car-porsche-gt1.xml .\runtimed\drivers\human\tracks\e-track-4\car-porsche-gt1.xml
copy .\src\drivers\human\tracks\e-track-4\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-4\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-5
copy .\src\drivers\human\tracks\e-track-5\car-cg-nascar-rwd.xml .\runtimed\drivers\human\tracks\e-track-5\car-cg-nascar-rwd.xml
copy .\src\drivers\human\tracks\e-track-5\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-5\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\e-track-6
copy .\src\drivers\human\tracks\e-track-6\car-porsche-gt1.xml .\runtimed\drivers\human\tracks\e-track-6\car-porsche-gt1.xml
copy .\src\drivers\human\tracks\e-track-6\car-torcs.xml .\runtimed\drivers\human\tracks\e-track-6\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\mixed-1
copy .\src\drivers\human\tracks\mixed-1\car-torcs.xml .\runtimed\drivers\human\tracks\mixed-1\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\mixed-2
copy .\src\drivers\human\tracks\mixed-2\car-torcs.xml .\runtimed\drivers\human\tracks\mixed-2\car-torcs.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
call .\create_dir .\runtimed\drivers\human\tracks
call .\create_dir .\runtimed\drivers\human\tracks\wheel-1
copy .\src\drivers\human\tracks\wheel-1\car-mclaren-f1.xml .\runtimed\drivers\human\tracks\wheel-1\car-mclaren-f1.xml
copy .\src\drivers\human\tracks\wheel-1\car-porsche-gt1.xml .\runtimed\drivers\human\tracks\wheel-1\car-porsche-gt1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human
copy .\src\drivers\human\car-155-DTM.xml .\runtimed\drivers\human\car-155-DTM.xml
copy .\src\drivers\human\car-360-modena.xml .\runtimed\drivers\human\car-360-modena.xml
copy .\src\drivers\human\car-buggy.xml .\runtimed\drivers\human\car-buggy.xml
copy .\src\drivers\human\car-cg-gt-rwd.xml .\runtimed\drivers\human\car-cg-gt-rwd.xml
copy .\src\drivers\human\car-cg-nascar-fwd.xml .\runtimed\drivers\human\car-cg-nascar-fwd.xml
copy .\src\drivers\human\car-cg-nascar-rwd.xml .\runtimed\drivers\human\car-cg-nascar-rwd.xml
copy .\src\drivers\human\car-corvette.xml .\runtimed\drivers\human\car-corvette.xml
copy .\src\drivers\human\car-lotus-gt1.xml .\runtimed\drivers\human\car-lotus-gt1.xml
copy .\src\drivers\human\car-mclaren-f1.xml .\runtimed\drivers\human\car-mclaren-f1.xml
copy .\src\drivers\human\car-p406.xml .\runtimed\drivers\human\car-p406.xml
copy .\src\drivers\human\car-porsche-gt1.xml .\runtimed\drivers\human\car-porsche-gt1.xml
copy .\src\drivers\human\car-torcs.xml .\runtimed\drivers\human\car-torcs.xml
copy .\src\drivers\human\car-viper-gts-r.xml .\runtimed\drivers\human\car-viper-gts-r.xml
copy .\src\drivers\human\human.xml .\runtimed\drivers\human\human.xml
copy .\src\drivers\human\preferences.xml .\runtimed\drivers\human\preferences.xml
copy .\src\drivers\human\logo.rgb .\runtimed\drivers\human\logo.rgb
copy .\src\drivers\human\mclaren-f1.rgb .\runtimed\drivers\human\mclaren-f1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\human

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno
call .\create_dir .\runtimed\drivers\inferno\tracksdata
copy .\src\drivers\inferno\tracksdata\aalborg.xml .\runtimed\drivers\inferno\tracksdata\aalborg.xml
copy .\src\drivers\inferno\tracksdata\a-speedway.xml .\runtimed\drivers\inferno\tracksdata\a-speedway.xml
copy .\src\drivers\inferno\tracksdata\car_aalborg.xml .\runtimed\drivers\inferno\tracksdata\car_aalborg.xml
copy .\src\drivers\inferno\tracksdata\car_a-speedway.xml .\runtimed\drivers\inferno\tracksdata\car_a-speedway.xml
copy .\src\drivers\inferno\tracksdata\car_eroad.xml .\runtimed\drivers\inferno\tracksdata\car_eroad.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-1.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-1.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-2.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-2.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-3.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-3.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-4.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-4.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-5.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-5.xml
copy .\src\drivers\inferno\tracksdata\car_e-track-6.xml .\runtimed\drivers\inferno\tracksdata\car_e-track-6.xml
copy .\src\drivers\inferno\tracksdata\car_g-track-1.xml .\runtimed\drivers\inferno\tracksdata\car_g-track-1.xml
copy .\src\drivers\inferno\tracksdata\car_michigan.xml .\runtimed\drivers\inferno\tracksdata\car_michigan.xml
copy .\src\drivers\inferno\tracksdata\car_s2.xml .\runtimed\drivers\inferno\tracksdata\car_s2.xml
copy .\src\drivers\inferno\tracksdata\car_test-1.xml .\runtimed\drivers\inferno\tracksdata\car_test-1.xml
copy .\src\drivers\inferno\tracksdata\car_wheel-1.xml .\runtimed\drivers\inferno\tracksdata\car_wheel-1.xml
copy .\src\drivers\inferno\tracksdata\city-1.xml .\runtimed\drivers\inferno\tracksdata\city-1.xml
copy .\src\drivers\inferno\tracksdata\eroad.xml .\runtimed\drivers\inferno\tracksdata\eroad.xml
copy .\src\drivers\inferno\tracksdata\e-track-1.xml .\runtimed\drivers\inferno\tracksdata\e-track-1.xml
copy .\src\drivers\inferno\tracksdata\e-track-2.xml .\runtimed\drivers\inferno\tracksdata\e-track-2.xml
copy .\src\drivers\inferno\tracksdata\e-track-3.xml .\runtimed\drivers\inferno\tracksdata\e-track-3.xml
copy .\src\drivers\inferno\tracksdata\e-track-4.xml .\runtimed\drivers\inferno\tracksdata\e-track-4.xml
copy .\src\drivers\inferno\tracksdata\e-track-5.xml .\runtimed\drivers\inferno\tracksdata\e-track-5.xml
copy .\src\drivers\inferno\tracksdata\e-track-6.xml .\runtimed\drivers\inferno\tracksdata\e-track-6.xml
copy .\src\drivers\inferno\tracksdata\g-track-1.xml .\runtimed\drivers\inferno\tracksdata\g-track-1.xml
copy .\src\drivers\inferno\tracksdata\michigan.xml .\runtimed\drivers\inferno\tracksdata\michigan.xml
copy .\src\drivers\inferno\tracksdata\s2.xml .\runtimed\drivers\inferno\tracksdata\s2.xml
copy .\src\drivers\inferno\tracksdata\wheel-1.xml .\runtimed\drivers\inferno\tracksdata\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno
copy .\src\drivers\inferno\inferno.xml .\runtimed\drivers\inferno\inferno.xml
copy .\src\drivers\inferno\car1.xml .\runtimed\drivers\inferno\car1.xml
copy .\src\drivers\inferno\logo.rgb .\runtimed\drivers\inferno\logo.rgb
copy .\src\drivers\inferno\mclaren-f1.rgb .\runtimed\drivers\inferno\mclaren-f1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno2
call .\create_dir .\runtimed\drivers\inferno2\tracksdata
copy .\src\drivers\inferno2\tracksdata\aalborg.xml .\runtimed\drivers\inferno2\tracksdata\aalborg.xml
copy .\src\drivers\inferno2\tracksdata\a-speedway.xml .\runtimed\drivers\inferno2\tracksdata\a-speedway.xml
copy .\src\drivers\inferno2\tracksdata\car_aalborg.xml .\runtimed\drivers\inferno2\tracksdata\car_aalborg.xml
copy .\src\drivers\inferno2\tracksdata\car_a-speedway.xml .\runtimed\drivers\inferno2\tracksdata\car_a-speedway.xml
copy .\src\drivers\inferno2\tracksdata\car_eroad.xml .\runtimed\drivers\inferno2\tracksdata\car_eroad.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-1.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-1.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-2.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-2.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-3.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-3.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-4.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-4.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-5.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-5.xml
copy .\src\drivers\inferno2\tracksdata\car_e-track-6.xml .\runtimed\drivers\inferno2\tracksdata\car_e-track-6.xml
copy .\src\drivers\inferno2\tracksdata\car_g-track-1.xml .\runtimed\drivers\inferno2\tracksdata\car_g-track-1.xml
copy .\src\drivers\inferno2\tracksdata\car_michigan.xml .\runtimed\drivers\inferno2\tracksdata\car_michigan.xml
copy .\src\drivers\inferno2\tracksdata\car_s2.xml .\runtimed\drivers\inferno2\tracksdata\car_s2.xml
copy .\src\drivers\inferno2\tracksdata\car_test-1.xml .\runtimed\drivers\inferno2\tracksdata\car_test-1.xml
copy .\src\drivers\inferno2\tracksdata\car_wheel-1.xml .\runtimed\drivers\inferno2\tracksdata\car_wheel-1.xml
copy .\src\drivers\inferno2\tracksdata\eroad.xml .\runtimed\drivers\inferno2\tracksdata\eroad.xml
copy .\src\drivers\inferno2\tracksdata\e-track-1.xml .\runtimed\drivers\inferno2\tracksdata\e-track-1.xml
copy .\src\drivers\inferno2\tracksdata\e-track-2.xml .\runtimed\drivers\inferno2\tracksdata\e-track-2.xml
copy .\src\drivers\inferno2\tracksdata\e-track-3.xml .\runtimed\drivers\inferno2\tracksdata\e-track-3.xml
copy .\src\drivers\inferno2\tracksdata\e-track-4.xml .\runtimed\drivers\inferno2\tracksdata\e-track-4.xml
copy .\src\drivers\inferno2\tracksdata\e-track-5.xml .\runtimed\drivers\inferno2\tracksdata\e-track-5.xml
copy .\src\drivers\inferno2\tracksdata\e-track-6.xml .\runtimed\drivers\inferno2\tracksdata\e-track-6.xml
copy .\src\drivers\inferno2\tracksdata\g-track-1.xml .\runtimed\drivers\inferno2\tracksdata\g-track-1.xml
copy .\src\drivers\inferno2\tracksdata\michigan.xml .\runtimed\drivers\inferno2\tracksdata\michigan.xml
copy .\src\drivers\inferno2\tracksdata\s2.xml .\runtimed\drivers\inferno2\tracksdata\s2.xml
copy .\src\drivers\inferno2\tracksdata\wheel-1.xml .\runtimed\drivers\inferno2\tracksdata\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno2
copy .\src\drivers\inferno2\inferno2.xml .\runtimed\drivers\inferno2\inferno2.xml
copy .\src\drivers\inferno2\car1.xml .\runtimed\drivers\inferno2\car1.xml
copy .\src\drivers\inferno2\logo.rgb .\runtimed\drivers\inferno2\logo.rgb
copy .\src\drivers\inferno2\360-modena.rgb .\runtimed\drivers\inferno2\360-modena.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno2

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno3
call .\create_dir .\runtimed\drivers\inferno3\tracksdata
copy .\src\drivers\inferno3\tracksdata\aalborg.xml .\runtimed\drivers\inferno3\tracksdata\aalborg.xml
copy .\src\drivers\inferno3\tracksdata\a-speedway.xml .\runtimed\drivers\inferno3\tracksdata\a-speedway.xml
copy .\src\drivers\inferno3\tracksdata\car_aalborg.xml .\runtimed\drivers\inferno3\tracksdata\car_aalborg.xml
copy .\src\drivers\inferno3\tracksdata\car_a-speedway.xml .\runtimed\drivers\inferno3\tracksdata\car_a-speedway.xml
copy .\src\drivers\inferno3\tracksdata\car_eroad.xml .\runtimed\drivers\inferno3\tracksdata\car_eroad.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-1.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-1.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-2.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-2.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-3.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-3.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-4.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-4.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-5.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-5.xml
copy .\src\drivers\inferno3\tracksdata\car_e-track-6.xml .\runtimed\drivers\inferno3\tracksdata\car_e-track-6.xml
copy .\src\drivers\inferno3\tracksdata\car_g-track-1.xml .\runtimed\drivers\inferno3\tracksdata\car_g-track-1.xml
copy .\src\drivers\inferno3\tracksdata\car_michigan.xml .\runtimed\drivers\inferno3\tracksdata\car_michigan.xml
copy .\src\drivers\inferno3\tracksdata\car_wheel-1.xml .\runtimed\drivers\inferno3\tracksdata\car_wheel-1.xml
copy .\src\drivers\inferno3\tracksdata\eroad.xml .\runtimed\drivers\inferno3\tracksdata\eroad.xml
copy .\src\drivers\inferno3\tracksdata\e-track-1.xml .\runtimed\drivers\inferno3\tracksdata\e-track-1.xml
copy .\src\drivers\inferno3\tracksdata\e-track-2.xml .\runtimed\drivers\inferno3\tracksdata\e-track-2.xml
copy .\src\drivers\inferno3\tracksdata\e-track-3.xml .\runtimed\drivers\inferno3\tracksdata\e-track-3.xml
copy .\src\drivers\inferno3\tracksdata\e-track-4.xml .\runtimed\drivers\inferno3\tracksdata\e-track-4.xml
copy .\src\drivers\inferno3\tracksdata\e-track-5.xml .\runtimed\drivers\inferno3\tracksdata\e-track-5.xml
copy .\src\drivers\inferno3\tracksdata\e-track-6.xml .\runtimed\drivers\inferno3\tracksdata\e-track-6.xml
copy .\src\drivers\inferno3\tracksdata\g-track-1.xml .\runtimed\drivers\inferno3\tracksdata\g-track-1.xml
copy .\src\drivers\inferno3\tracksdata\michigan.xml .\runtimed\drivers\inferno3\tracksdata\michigan.xml
copy .\src\drivers\inferno3\tracksdata\wheel-1.xml .\runtimed\drivers\inferno3\tracksdata\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno3
copy .\src\drivers\inferno3\inferno3.xml .\runtimed\drivers\inferno3\inferno3.xml
copy .\src\drivers\inferno3\car1.xml .\runtimed\drivers\inferno3\car1.xml
copy .\src\drivers\inferno3\logo.rgb .\runtimed\drivers\inferno3\logo.rgb
copy .\src\drivers\inferno3\porsche-gt1.rgb .\runtimed\drivers\inferno3\porsche-gt1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\inferno3

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\K1999
call .\create_dir .\runtimed\drivers\K1999\1
copy .\src\drivers\K1999\1\buggy.rgb .\runtimed\drivers\K1999\1\buggy.rgb
copy .\src\drivers\K1999\1\settings.xml .\runtimed\drivers\K1999\1\settings.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\K1999
call .\create_dir .\runtimed\drivers\K1999\2
copy .\src\drivers\K1999\2\cg-nascar-rwd.rgb .\runtimed\drivers\K1999\2\cg-nascar-rwd.rgb
copy .\src\drivers\K1999\2\settings.xml .\runtimed\drivers\K1999\2\settings.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\K1999
copy .\src\drivers\K1999\K1999.xml .\runtimed\drivers\K1999\K1999.xml
copy .\src\drivers\K1999\logo.rgb .\runtimed\drivers\K1999\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\K1999

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\lliaw
call .\create_dir .\runtimed\drivers\lliaw\tracksdata
copy .\src\drivers\lliaw\tracksdata\car_e-track-3.xml .\runtimed\drivers\lliaw\tracksdata\car_e-track-3.xml
copy .\src\drivers\lliaw\tracksdata\car_e-track-4.xml .\runtimed\drivers\lliaw\tracksdata\car_e-track-4.xml
copy .\src\drivers\lliaw\tracksdata\car_e-track-6.xml .\runtimed\drivers\lliaw\tracksdata\car_e-track-6.xml
copy .\src\drivers\lliaw\tracksdata\car_eroad.xml .\runtimed\drivers\lliaw\tracksdata\car_eroad.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\lliaw
copy .\src\drivers\lliaw\lliaw.xml .\runtimed\drivers\lliaw\lliaw.xml
copy .\src\drivers\lliaw\car.xml .\runtimed\drivers\lliaw\car.xml
copy .\src\drivers\lliaw\viper-gts-r.rgb .\runtimed\drivers\lliaw\viper-gts-r.rgb
copy .\src\drivers\lliaw\logo.rgb .\runtimed\drivers\lliaw\logo.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\lliaw

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tanhoj
call .\create_dir .\runtimed\drivers\tanhoj\tracksdata
copy .\src\drivers\tanhoj\tracksdata\aalborg.xml .\runtimed\drivers\tanhoj\tracksdata\aalborg.xml
copy .\src\drivers\tanhoj\tracksdata\a-speedway.xml .\runtimed\drivers\tanhoj\tracksdata\a-speedway.xml
copy .\src\drivers\tanhoj\tracksdata\car_aalborg.xml .\runtimed\drivers\tanhoj\tracksdata\car_aalborg.xml
copy .\src\drivers\tanhoj\tracksdata\car_a-speedway.xml .\runtimed\drivers\tanhoj\tracksdata\car_a-speedway.xml
copy .\src\drivers\tanhoj\tracksdata\car_eroad.xml .\runtimed\drivers\tanhoj\tracksdata\car_eroad.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-1.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-1.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-2.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-2.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-3.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-3.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-4.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-4.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-5.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-5.xml
copy .\src\drivers\tanhoj\tracksdata\car_e-track-6.xml .\runtimed\drivers\tanhoj\tracksdata\car_e-track-6.xml
copy .\src\drivers\tanhoj\tracksdata\car_g-track-1.xml .\runtimed\drivers\tanhoj\tracksdata\car_g-track-1.xml
copy .\src\drivers\tanhoj\tracksdata\car_michigan.xml .\runtimed\drivers\tanhoj\tracksdata\car_michigan.xml
copy .\src\drivers\tanhoj\tracksdata\car_s2.xml .\runtimed\drivers\tanhoj\tracksdata\car_s2.xml
copy .\src\drivers\tanhoj\tracksdata\car_test-1.xml .\runtimed\drivers\tanhoj\tracksdata\car_test-1.xml
copy .\src\drivers\tanhoj\tracksdata\car_wheel-1.xml .\runtimed\drivers\tanhoj\tracksdata\car_wheel-1.xml
copy .\src\drivers\tanhoj\tracksdata\city-1.xml .\runtimed\drivers\tanhoj\tracksdata\city-1.xml
copy .\src\drivers\tanhoj\tracksdata\dirt-2.xml .\runtimed\drivers\tanhoj\tracksdata\dirt-2.xml
copy .\src\drivers\tanhoj\tracksdata\eroad.xml .\runtimed\drivers\tanhoj\tracksdata\eroad.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-1.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-1.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-2.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-2.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-3.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-3.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-4.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-4.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-5.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-5.xml
copy .\src\drivers\tanhoj\tracksdata\e-track-6.xml .\runtimed\drivers\tanhoj\tracksdata\e-track-6.xml
copy .\src\drivers\tanhoj\tracksdata\g-track-1.xml .\runtimed\drivers\tanhoj\tracksdata\g-track-1.xml
copy .\src\drivers\tanhoj\tracksdata\michigan.xml .\runtimed\drivers\tanhoj\tracksdata\michigan.xml
copy .\src\drivers\tanhoj\tracksdata\s2.xml .\runtimed\drivers\tanhoj\tracksdata\s2.xml
copy .\src\drivers\tanhoj\tracksdata\wheel-1.xml .\runtimed\drivers\tanhoj\tracksdata\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tanhoj
copy .\src\drivers\tanhoj\tanhoj.xml .\runtimed\drivers\tanhoj\tanhoj.xml
copy .\src\drivers\tanhoj\car1.xml .\runtimed\drivers\tanhoj\car1.xml
copy .\src\drivers\tanhoj\logo.rgb .\runtimed\drivers\tanhoj\logo.rgb
copy .\src\drivers\tanhoj\cg-nascar-rwd.rgb .\runtimed\drivers\tanhoj\cg-nascar-rwd.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tanhoj

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tita
call .\create_dir .\runtimed\drivers\tita\tracksdata
copy .\src\drivers\tita\tracksdata\aalborg.xml .\runtimed\drivers\tita\tracksdata\aalborg.xml
copy .\src\drivers\tita\tracksdata\a-speedway.xml .\runtimed\drivers\tita\tracksdata\a-speedway.xml
copy .\src\drivers\tita\tracksdata\car_aalborg.xml .\runtimed\drivers\tita\tracksdata\car_aalborg.xml
copy .\src\drivers\tita\tracksdata\car_a-speedway.xml .\runtimed\drivers\tita\tracksdata\car_a-speedway.xml
copy .\src\drivers\tita\tracksdata\car_eroad.xml .\runtimed\drivers\tita\tracksdata\car_eroad.xml
copy .\src\drivers\tita\tracksdata\car_e-track-1.xml .\runtimed\drivers\tita\tracksdata\car_e-track-1.xml
copy .\src\drivers\tita\tracksdata\car_e-track-2.xml .\runtimed\drivers\tita\tracksdata\car_e-track-2.xml
copy .\src\drivers\tita\tracksdata\car_e-track-3.xml .\runtimed\drivers\tita\tracksdata\car_e-track-3.xml
copy .\src\drivers\tita\tracksdata\car_e-track-4.xml .\runtimed\drivers\tita\tracksdata\car_e-track-4.xml
copy .\src\drivers\tita\tracksdata\car_e-track-5.xml .\runtimed\drivers\tita\tracksdata\car_e-track-5.xml
copy .\src\drivers\tita\tracksdata\car_e-track-6.xml .\runtimed\drivers\tita\tracksdata\car_e-track-6.xml
copy .\src\drivers\tita\tracksdata\car_g-track-1.xml .\runtimed\drivers\tita\tracksdata\car_g-track-1.xml
copy .\src\drivers\tita\tracksdata\car_michigan.xml .\runtimed\drivers\tita\tracksdata\car_michigan.xml
copy .\src\drivers\tita\tracksdata\car_s2.xml .\runtimed\drivers\tita\tracksdata\car_s2.xml
copy .\src\drivers\tita\tracksdata\car_test-1.xml .\runtimed\drivers\tita\tracksdata\car_test-1.xml
copy .\src\drivers\tita\tracksdata\car_wheel-1.xml .\runtimed\drivers\tita\tracksdata\car_wheel-1.xml
copy .\src\drivers\tita\tracksdata\city-1.xml .\runtimed\drivers\tita\tracksdata\city-1.xml
copy .\src\drivers\tita\tracksdata\eroad.xml .\runtimed\drivers\tita\tracksdata\eroad.xml
copy .\src\drivers\tita\tracksdata\e-track-1.xml .\runtimed\drivers\tita\tracksdata\e-track-1.xml
copy .\src\drivers\tita\tracksdata\e-track-2.xml .\runtimed\drivers\tita\tracksdata\e-track-2.xml
copy .\src\drivers\tita\tracksdata\e-track-3.xml .\runtimed\drivers\tita\tracksdata\e-track-3.xml
copy .\src\drivers\tita\tracksdata\e-track-4.xml .\runtimed\drivers\tita\tracksdata\e-track-4.xml
copy .\src\drivers\tita\tracksdata\e-track-5.xml .\runtimed\drivers\tita\tracksdata\e-track-5.xml
copy .\src\drivers\tita\tracksdata\e-track-6.xml .\runtimed\drivers\tita\tracksdata\e-track-6.xml
copy .\src\drivers\tita\tracksdata\g-track-1.xml .\runtimed\drivers\tita\tracksdata\g-track-1.xml
copy .\src\drivers\tita\tracksdata\michigan.xml .\runtimed\drivers\tita\tracksdata\michigan.xml
copy .\src\drivers\tita\tracksdata\s2.xml .\runtimed\drivers\tita\tracksdata\s2.xml
copy .\src\drivers\tita\tracksdata\wheel-1.xml .\runtimed\drivers\tita\tracksdata\wheel-1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tita
copy .\src\drivers\tita\tita.xml .\runtimed\drivers\tita\tita.xml
copy .\src\drivers\tita\car.xml .\runtimed\drivers\tita\car.xml
copy .\src\drivers\tita\logo.rgb .\runtimed\drivers\tita\logo.rgb
copy .\src\drivers\tita\lotus-gt1.rgb .\runtimed\drivers\tita\lotus-gt1.rgb

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tita

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tutorial1
copy .\src\drivers\tutorial1\tutorial1.xml .\runtimed\drivers\tutorial1\tutorial1.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tutorial1

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tutorial2
copy .\src\drivers\tutorial2\tutorial2.xml .\runtimed\drivers\tutorial2\tutorial2.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\drivers
call .\create_dir .\runtimed\drivers\tutorial2

call .\create_dir .\runtimed
call .\create_dir .\runtimed\results
copy .\src\libs\racemantools\res.png .\runtimed\results\res.png

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.

call .\create_dir .\runtimed
call .\create_dir .\runtimed\config
copy .\src\libs\tgf\screen.xml .\runtimed\config\screen.xml
copy .\src\libs\tgf\params.dtd .\runtimed\config\params.dtd

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.

call .\create_dir .\runtimed
call .\create_dir .\runtimed\config
copy .\src\modules\graphic\ssggraph\graph.xml .\runtimed\config\graph.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\graphic

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\raceman
call .\create_dir .\runtimed\modules\raceman\practice
call .\create_dir .\runtimed\modules\raceman\practice\control

call .\create_dir .\runtimed
call .\create_dir .\runtimed\config
call .\create_dir .\runtimed\config\practice
copy .\src\modules\raceman\practice\practice\practice.xml .\runtimed\config\practice\practice.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\raceman

call .\create_dir .\runtimed
call .\create_dir .\runtimed\config
call .\create_dir .\runtimed\config\quickrace
copy .\src\modules\raceman\quickrace\qrace.xml .\runtimed\config\quickrace\qrace.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\raceman

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\simu

call .\create_dir .\runtimed
call .\create_dir .\runtimed\telemetry
copy .\src\modules\telemetry\telemetry.sh .\runtimed\telemetry\telemetry.sh

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\telemetry

call .\create_dir .\runtimed
call .\create_dir .\runtimed\modules
call .\create_dir .\runtimed\modules\track

call .\create_dir .\runtimed
call .\create_dir .\runtimed\tools
call .\create_dir .\runtimed\tools\trackgen
copy .\src\tools\trackgen\trackgen.xml .\runtimed\tools\trackgen\trackgen.xml

call .\create_dir .\runtimed
call .\create_dir .\runtimed\.
copy .\CHANGELOG.html .\runtimed\.\CHANGELOG.html
copy .\COPYING .\runtimed\.\COPYING
