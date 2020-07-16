[0m[[0m[0minfo[0m] [0m[0mLoading settings from plugins.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mLoading project definition from /home/rjridle/risc-v-chisel/MyChiselProject/project[0m
[0m[[0m[0minfo[0m] [0m[0mLoading settings from build.sbt ...[0m
[0m[[0m[0minfo[0m] [0m[0mSet current project to RISCV_Single_Cycle (in build file:/home/rjridle/risc-v-chisel/MyChiselProject/)[0m
[0m[[0m[0minfo[0m] [0m[0mCompiling 2 Scala sources to /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/classes ...[0m
[0m[[0m[33mwarn[0m] [0m[0mthere were 535 feature warnings; re-run with -feature for details[0m
[0m[[0m[33mwarn[0m] [0m[0mone warning found[0m
[0m[[0m[0minfo[0m] [0m[0mDone compiling.[0m
[0m[[0m[33mwarn[0m] [0m[0mMultiple main classes detected.  Run 'show discoveredMainClasses' to see the list[0m
[0m[[0m[0minfo[0m] [0m[0mPackaging /home/rjridle/risc-v-chisel/MyChiselProject/target/scala-2.11/riscv_single_cycle_2.11-3.1.1.jar ...[0m
[0m[[0m[0minfo[0m] [0m[0mDone packaging.[0m
[0m[[0m[0minfo[0m] [0m[0mRunning riscvSingle.top [0m
[[35minfo[0m] [0.016] Elaborating design...
[[35minfo[0m] [2.763] Done elaborating.
Total FIRRTL Compile Time: 3211.8 ms
Total FIRRTL Compile Time: 1649.7 ms
file loaded in 2.4773558 seconds, 1347 symbols, 889 statements
[0m[[0m[31merror[0m] [0m[0m(run-main-0) java.io.FileNotFoundException: tests/RV32I_test.x.x (No such file or directory)[0m
[0m[[0m[31merror[0m] [0m[0mjava.io.FileNotFoundException: tests/RV32I_test.x.x (No such file or directory)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.io.FileInputStream.open0(Native Method)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.io.FileInputStream.open(FileInputStream.java:219)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.io.FileInputStream.<init>(FileInputStream.java:157)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.io.Source$.fromFile(Source.scala:91)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.io.Source$.fromFile(Source.scala:76)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.io.Source$.fromFile(Source.scala:54)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.executable.MemoryInitializer.treadle$executable$MemoryInitializer$$doInitialize(Memory.scala:622)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.executable.MemoryInitializer$$anonfun$initializeMemoriesFromFiles$1.apply(Memory.scala:639)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.executable.MemoryInitializer$$anonfun$initializeMemoriesFromFiles$1.apply(Memory.scala:638)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.collection.immutable.List.foreach(List.scala:392)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.executable.MemoryInitializer.initializeMemoriesFromFiles(Memory.scala:638)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.executable.ExecutionEngine$.apply(ExecutionEngine.scala:462)[0m
[0m[[0m[31merror[0m] [0m[0m	at treadle.TreadleTester.<init>(TreadleTester.scala:31)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.TreadleBackend.<init>(TreadleBackend.scala:18)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.setupTreadleBackend$.apply(TreadleBackend.scala:144)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1$$anonfun$apply$mcZ$sp$1.apply$mcZ$sp(Driver.scala:54)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1$$anonfun$apply$mcZ$sp$1.apply(Driver.scala:39)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1$$anonfun$apply$mcZ$sp$1.apply(Driver.scala:39)[0m
[0m[[0m[31merror[0m] [0m[0m	at logger.Logger$$anonfun$makeScope$1.apply(Logger.scala:138)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:58)[0m
[0m[[0m[31merror[0m] [0m[0m	at logger.Logger$.makeScope(Logger.scala:136)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1.apply$mcZ$sp(Driver.scala:39)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1.apply(Driver.scala:39)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$$anonfun$execute$1.apply(Driver.scala:39)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.util.DynamicVariable.withValue(DynamicVariable.scala:58)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$.execute(Driver.scala:38)[0m
[0m[[0m[31merror[0m] [0m[0m	at chisel3.iotesters.Driver$.execute(Driver.scala:100)[0m
[0m[[0m[31merror[0m] [0m[0m	at riscvSingle.top$.delayedEndpoint$riscvSingle$top$1(riscvSingle.scala:1114)[0m
[0m[[0m[31merror[0m] [0m[0m	at riscvSingle.top$delayedInit$body.apply(riscvSingle.scala:1113)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.Function0$class.apply$mcV$sp(Function0.scala:34)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.runtime.AbstractFunction0.apply$mcV$sp(AbstractFunction0.scala:12)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.App$$anonfun$main$1.apply(App.scala:76)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.App$$anonfun$main$1.apply(App.scala:76)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.collection.immutable.List.foreach(List.scala:392)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.collection.generic.TraversableForwarder$class.foreach(TraversableForwarder.scala:35)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.App$class.main(App.scala:76)[0m
[0m[[0m[31merror[0m] [0m[0m	at riscvSingle.top$.main(riscvSingle.scala:1113)[0m
[0m[[0m[31merror[0m] [0m[0m	at riscvSingle.top.main(riscvSingle.scala)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke0(Native Method)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/jdk.internal.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/jdk.internal.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.lang.reflect.Method.invoke(Method.java:566)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run.invokeMain(Run.scala:93)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run.run0(Run.scala:87)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run.execute$1(Run.scala:65)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run.$anonfun$run$4(Run.scala:77)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.runtime.java8.JFunction0$mcV$sp.apply(JFunction0$mcV$sp.java:12)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.util.InterfaceUtil$$anon$1.get(InterfaceUtil.scala:10)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.TrapExit$App.run(TrapExit.scala:252)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.lang.Thread.run(Thread.java:834)[0m
[0m[[0m[31merror[0m] [0m[0mjava.lang.RuntimeException: Nonzero exit code: 1[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run$.executeTrapExit(Run.scala:124)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Run.run(Run.scala:77)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Defaults$.$anonfun$bgRunMainTask$6(Defaults.scala:1147)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.Defaults$.$anonfun$bgRunMainTask$6$adapted(Defaults.scala:1142)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.internal.BackgroundThreadPool.$anonfun$run$1(DefaultBackgroundJobService.scala:366)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.runtime.java8.JFunction0$mcV$sp.apply(JFunction0$mcV$sp.java:12)[0m
[0m[[0m[31merror[0m] [0m[0m	at scala.util.Try$.apply(Try.scala:209)[0m
[0m[[0m[31merror[0m] [0m[0m	at sbt.internal.BackgroundThreadPool$BackgroundRunnable.run(DefaultBackgroundJobService.scala:289)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1128)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:628)[0m
[0m[[0m[31merror[0m] [0m[0m	at java.base/java.lang.Thread.run(Thread.java:834)[0m
[0m[[0m[31merror[0m] [0m[0m(Compile / [31mrunMain[0m) Nonzero exit code: 1[0m
[0m[[0m[31merror[0m] [0m[0mTotal time: 67 s, completed Jul 10, 2020, 2:15:40 PM[0m
