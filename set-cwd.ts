// set-cwd.ts
// 作用：在主程序运行前，强制将进程上下文切回目标业务目录
if (process.env.TARGET_DIR) {
  process.chdir(process.env.TARGET_DIR);
}