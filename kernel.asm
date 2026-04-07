
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000d117          	auipc	sp,0xd
    80000004:	4b013103          	ld	sp,1200(sp) # 8000d4b0 <_GLOBAL_OFFSET_TABLE_+0x30>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	788070ef          	jal	ra,800077a4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14contextHandlerEv>:
.global _ZN5Riscv14contextHandlerEv
.global _ZN5Riscv4trapEv
.align 4
_ZN5Riscv14contextHandlerEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00313c23          	sd	gp,24(sp)
    80001010:	02413023          	sd	tp,32(sp)
    80001014:	02513423          	sd	t0,40(sp)
    80001018:	02613823          	sd	t1,48(sp)
    8000101c:	02713c23          	sd	t2,56(sp)
    80001020:	04813023          	sd	s0,64(sp)
    80001024:	04913423          	sd	s1,72(sp)
    80001028:	04b13c23          	sd	a1,88(sp)
    8000102c:	06c13023          	sd	a2,96(sp)
    80001030:	06d13423          	sd	a3,104(sp)
    80001034:	06e13823          	sd	a4,112(sp)
    80001038:	06f13c23          	sd	a5,120(sp)
    8000103c:	09013023          	sd	a6,128(sp)
    80001040:	09113423          	sd	a7,136(sp)
    80001044:	09213823          	sd	s2,144(sp)
    80001048:	09313c23          	sd	s3,152(sp)
    8000104c:	0b413023          	sd	s4,160(sp)
    80001050:	0b513423          	sd	s5,168(sp)
    80001054:	0b613823          	sd	s6,176(sp)
    80001058:	0b713c23          	sd	s7,184(sp)
    8000105c:	0d813023          	sd	s8,192(sp)
    80001060:	0d913423          	sd	s9,200(sp)
    80001064:	0da13823          	sd	s10,208(sp)
    80001068:	0db13c23          	sd	s11,216(sp)
    8000106c:	0fc13023          	sd	t3,224(sp)
    80001070:	0fd13423          	sd	t4,232(sp)
    80001074:	0fe13823          	sd	t5,240(sp)
    80001078:	0ff13c23          	sd	t6,248(sp)
    call _ZN5Riscv4trapEv
    8000107c:	7b8020ef          	jal	ra,80003834 <_ZN5Riscv4trapEv>
    csrr t1, sepc
    80001080:	14102373          	csrr	t1,sepc
    addi t1,t1,4
    80001084:	00430313          	addi	t1,t1,4
    csrw sepc, t1
    80001088:	14131073          	csrw	sepc,t1
    .irp index, 0,1,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000108c:	00013003          	ld	zero,0(sp)
    80001090:	00813083          	ld	ra,8(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05813583          	ld	a1,88(sp)
    800010b4:	06013603          	ld	a2,96(sp)
    800010b8:	06813683          	ld	a3,104(sp)
    800010bc:	07013703          	ld	a4,112(sp)
    800010c0:	07813783          	ld	a5,120(sp)
    800010c4:	08013803          	ld	a6,128(sp)
    800010c8:	08813883          	ld	a7,136(sp)
    800010cc:	09013903          	ld	s2,144(sp)
    800010d0:	09813983          	ld	s3,152(sp)
    800010d4:	0a013a03          	ld	s4,160(sp)
    800010d8:	0a813a83          	ld	s5,168(sp)
    800010dc:	0b013b03          	ld	s6,176(sp)
    800010e0:	0b813b83          	ld	s7,184(sp)
    800010e4:	0c013c03          	ld	s8,192(sp)
    800010e8:	0c813c83          	ld	s9,200(sp)
    800010ec:	0d013d03          	ld	s10,208(sp)
    800010f0:	0d813d83          	ld	s11,216(sp)
    800010f4:	0e013e03          	ld	t3,224(sp)
    800010f8:	0e813e83          	ld	t4,232(sp)
    800010fc:	0f013f03          	ld	t5,240(sp)
    80001100:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001104:	10010113          	addi	sp,sp,256
    80001108:	10200073          	sret
    8000110c:	0000                	unimp
	...

0000000080001110 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001110:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001114:	00b29a63          	bne	t0,a1,80001128 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001118:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    8000111c:	fe029ae3          	bnez	t0,80001110 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001120:	00000513          	li	a0,0
    jr ra                  # Return.
    80001124:	00008067          	ret

0000000080001128 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001128:	00100513          	li	a0,1
    8000112c:	00008067          	ret

0000000080001130 <_Z12ecallWrappermmmmm>:
    return (char) ecallWrapper(GETC_CODE);
};
void putc (char c){
    ecallWrapper(PUTC_CODE,(uint64)c);
}
uint64 ecallWrapper(uint64 a0,uint64 a1,uint64 a2,uint64 a3, uint64 a4){
    80001130:	ff010113          	addi	sp,sp,-16
    80001134:	00813423          	sd	s0,8(sp)
    80001138:	01010413          	addi	s0,sp,16
    asm volatile("ecall");
    8000113c:	00000073          	ecall
    uint64 retval;
    asm volatile("mv %0, a0":"=r"(retval));
    80001140:	00050513          	mv	a0,a0
    return retval;
    80001144:	00813403          	ld	s0,8(sp)
    80001148:	01010113          	addi	sp,sp,16
    8000114c:	00008067          	ret

0000000080001150 <_Z9mem_allocm>:
void* mem_alloc (size_t size){
    80001150:	ff010113          	addi	sp,sp,-16
    80001154:	00113423          	sd	ra,8(sp)
    80001158:	00813023          	sd	s0,0(sp)
    8000115c:	01010413          	addi	s0,sp,16
    size_t newsize=(size+2*sizeof(uint64))%MEM_BLOCK_SIZE?(size+2*sizeof(uint64))/MEM_BLOCK_SIZE+1:(size+2*sizeof(uint64))/MEM_BLOCK_SIZE;
    80001160:	01050513          	addi	a0,a0,16 # 1010 <_entry-0x7fffeff0>
    80001164:	03f57793          	andi	a5,a0,63
    80001168:	02078a63          	beqz	a5,8000119c <_Z9mem_allocm+0x4c>
    8000116c:	00655513          	srli	a0,a0,0x6
    80001170:	00150593          	addi	a1,a0,1
    return (void*)ecallWrapper((uint64)MEM_ALLOC_CODE,(uint64)newsize);
    80001174:	00000713          	li	a4,0
    80001178:	00000693          	li	a3,0
    8000117c:	00000613          	li	a2,0
    80001180:	00100513          	li	a0,1
    80001184:	00000097          	auipc	ra,0x0
    80001188:	fac080e7          	jalr	-84(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    8000118c:	00813083          	ld	ra,8(sp)
    80001190:	00013403          	ld	s0,0(sp)
    80001194:	01010113          	addi	sp,sp,16
    80001198:	00008067          	ret
    size_t newsize=(size+2*sizeof(uint64))%MEM_BLOCK_SIZE?(size+2*sizeof(uint64))/MEM_BLOCK_SIZE+1:(size+2*sizeof(uint64))/MEM_BLOCK_SIZE;
    8000119c:	00655593          	srli	a1,a0,0x6
    800011a0:	fd5ff06f          	j	80001174 <_Z9mem_allocm+0x24>

00000000800011a4 <_Z8mem_freePv>:
int mem_free (void* adr){
    800011a4:	ff010113          	addi	sp,sp,-16
    800011a8:	00113423          	sd	ra,8(sp)
    800011ac:	00813023          	sd	s0,0(sp)
    800011b0:	01010413          	addi	s0,sp,16
    800011b4:	00050593          	mv	a1,a0
    return (int) ecallWrapper(MEM_FREE_CODE,(uint64)adr);
    800011b8:	00000713          	li	a4,0
    800011bc:	00000693          	li	a3,0
    800011c0:	00000613          	li	a2,0
    800011c4:	00200513          	li	a0,2
    800011c8:	00000097          	auipc	ra,0x0
    800011cc:	f68080e7          	jalr	-152(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    800011d0:	0005051b          	sext.w	a0,a0
    800011d4:	00813083          	ld	ra,8(sp)
    800011d8:	00013403          	ld	s0,0(sp)
    800011dc:	01010113          	addi	sp,sp,16
    800011e0:	00008067          	ret

00000000800011e4 <_Z13thread_createPP3TCBPFvPvES2_>:
int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    800011e4:	fd010113          	addi	sp,sp,-48
    800011e8:	02113423          	sd	ra,40(sp)
    800011ec:	02813023          	sd	s0,32(sp)
    800011f0:	00913c23          	sd	s1,24(sp)
    800011f4:	01213823          	sd	s2,16(sp)
    800011f8:	01313423          	sd	s3,8(sp)
    800011fc:	03010413          	addi	s0,sp,48
    80001200:	00050493          	mv	s1,a0
    80001204:	00058913          	mv	s2,a1
    80001208:	00060993          	mv	s3,a2
    void* allocatedUserStack= mem_alloc(sizeof(uint64)*DEFAULT_STACK_SIZE);
    8000120c:	00010537          	lui	a0,0x10
    80001210:	00000097          	auipc	ra,0x0
    80001214:	f40080e7          	jalr	-192(ra) # 80001150 <_Z9mem_allocm>
    80001218:	00050713          	mv	a4,a0
    return (int)ecallWrapper(THREAD_CREATE_CODE,(uint64)handle,(uint64)start_routine,(uint64)arg,(uint64)allocatedUserStack);
    8000121c:	00098693          	mv	a3,s3
    80001220:	00090613          	mv	a2,s2
    80001224:	00048593          	mv	a1,s1
    80001228:	01100513          	li	a0,17
    8000122c:	00000097          	auipc	ra,0x0
    80001230:	f04080e7          	jalr	-252(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001234:	0005051b          	sext.w	a0,a0
    80001238:	02813083          	ld	ra,40(sp)
    8000123c:	02013403          	ld	s0,32(sp)
    80001240:	01813483          	ld	s1,24(sp)
    80001244:	01013903          	ld	s2,16(sp)
    80001248:	00813983          	ld	s3,8(sp)
    8000124c:	03010113          	addi	sp,sp,48
    80001250:	00008067          	ret

0000000080001254 <_Z11thread_exitv>:
int thread_exit (){
    80001254:	ff010113          	addi	sp,sp,-16
    80001258:	00113423          	sd	ra,8(sp)
    8000125c:	00813023          	sd	s0,0(sp)
    80001260:	01010413          	addi	s0,sp,16
    return (int) ecallWrapper(THREAD_EXIT_CODE);
    80001264:	00000713          	li	a4,0
    80001268:	00000693          	li	a3,0
    8000126c:	00000613          	li	a2,0
    80001270:	00000593          	li	a1,0
    80001274:	01200513          	li	a0,18
    80001278:	00000097          	auipc	ra,0x0
    8000127c:	eb8080e7          	jalr	-328(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001280:	0005051b          	sext.w	a0,a0
    80001284:	00813083          	ld	ra,8(sp)
    80001288:	00013403          	ld	s0,0(sp)
    8000128c:	01010113          	addi	sp,sp,16
    80001290:	00008067          	ret

0000000080001294 <_Z15thread_dispatchv>:
void thread_dispatch (){
    80001294:	ff010113          	addi	sp,sp,-16
    80001298:	00113423          	sd	ra,8(sp)
    8000129c:	00813023          	sd	s0,0(sp)
    800012a0:	01010413          	addi	s0,sp,16
    ecallWrapper(THREAD_DISPATCH_CODE);
    800012a4:	00000713          	li	a4,0
    800012a8:	00000693          	li	a3,0
    800012ac:	00000613          	li	a2,0
    800012b0:	00000593          	li	a1,0
    800012b4:	01300513          	li	a0,19
    800012b8:	00000097          	auipc	ra,0x0
    800012bc:	e78080e7          	jalr	-392(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    800012c0:	00813083          	ld	ra,8(sp)
    800012c4:	00013403          	ld	s0,0(sp)
    800012c8:	01010113          	addi	sp,sp,16
    800012cc:	00008067          	ret

00000000800012d0 <_Z8sem_openPP4SemCj>:
int sem_open (sem_t* handle, unsigned init){
    800012d0:	ff010113          	addi	sp,sp,-16
    800012d4:	00113423          	sd	ra,8(sp)
    800012d8:	00813023          	sd	s0,0(sp)
    800012dc:	01010413          	addi	s0,sp,16
    return (int) ecallWrapper((uint64)SEM_OPEN_CODE,(uint64)handle,(uint64)init);
    800012e0:	00000713          	li	a4,0
    800012e4:	00000693          	li	a3,0
    800012e8:	02059613          	slli	a2,a1,0x20
    800012ec:	02065613          	srli	a2,a2,0x20
    800012f0:	00050593          	mv	a1,a0
    800012f4:	02100513          	li	a0,33
    800012f8:	00000097          	auipc	ra,0x0
    800012fc:	e38080e7          	jalr	-456(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001300:	0005051b          	sext.w	a0,a0
    80001304:	00813083          	ld	ra,8(sp)
    80001308:	00013403          	ld	s0,0(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_Z9sem_closeP4SemC>:
int sem_close (sem_t handle){
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00113423          	sd	ra,8(sp)
    8000131c:	00813023          	sd	s0,0(sp)
    80001320:	01010413          	addi	s0,sp,16
    80001324:	00050593          	mv	a1,a0
    return (int) ecallWrapper((uint64)SEM_CLOSE_CODE,(uint64)handle);
    80001328:	00000713          	li	a4,0
    8000132c:	00000693          	li	a3,0
    80001330:	00000613          	li	a2,0
    80001334:	02200513          	li	a0,34
    80001338:	00000097          	auipc	ra,0x0
    8000133c:	df8080e7          	jalr	-520(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001340:	0005051b          	sext.w	a0,a0
    80001344:	00813083          	ld	ra,8(sp)
    80001348:	00013403          	ld	s0,0(sp)
    8000134c:	01010113          	addi	sp,sp,16
    80001350:	00008067          	ret

0000000080001354 <_Z8sem_waitP4SemC>:
int sem_wait (sem_t id){
    80001354:	ff010113          	addi	sp,sp,-16
    80001358:	00113423          	sd	ra,8(sp)
    8000135c:	00813023          	sd	s0,0(sp)
    80001360:	01010413          	addi	s0,sp,16
    80001364:	00050593          	mv	a1,a0
    return (int) ecallWrapper((uint64)SEM_WAIT_CODE,(uint64)id);
    80001368:	00000713          	li	a4,0
    8000136c:	00000693          	li	a3,0
    80001370:	00000613          	li	a2,0
    80001374:	02300513          	li	a0,35
    80001378:	00000097          	auipc	ra,0x0
    8000137c:	db8080e7          	jalr	-584(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	00813083          	ld	ra,8(sp)
    80001388:	00013403          	ld	s0,0(sp)
    8000138c:	01010113          	addi	sp,sp,16
    80001390:	00008067          	ret

0000000080001394 <_Z10sem_signalP4SemC>:
int sem_signal (sem_t id){
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00113423          	sd	ra,8(sp)
    8000139c:	00813023          	sd	s0,0(sp)
    800013a0:	01010413          	addi	s0,sp,16
    800013a4:	00050593          	mv	a1,a0
    return (int)ecallWrapper((uint64)SEM_SIGNAL_CODE,(uint64)id);
    800013a8:	00000713          	li	a4,0
    800013ac:	00000693          	li	a3,0
    800013b0:	00000613          	li	a2,0
    800013b4:	02400513          	li	a0,36
    800013b8:	00000097          	auipc	ra,0x0
    800013bc:	d78080e7          	jalr	-648(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    800013c0:	0005051b          	sext.w	a0,a0
    800013c4:	00813083          	ld	ra,8(sp)
    800013c8:	00013403          	ld	s0,0(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z13sem_timedwaitP4SemCm>:
int sem_timedwait(sem_t id, time_t timeout){
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00113423          	sd	ra,8(sp)
    800013dc:	00813023          	sd	s0,0(sp)
    800013e0:	01010413          	addi	s0,sp,16
    800013e4:	00058613          	mv	a2,a1
    return (int) ecallWrapper(SEM_TIMEDWAIT_CODE,(uint64)id,(uint64)timeout);
    800013e8:	00000713          	li	a4,0
    800013ec:	00000693          	li	a3,0
    800013f0:	00050593          	mv	a1,a0
    800013f4:	02500513          	li	a0,37
    800013f8:	00000097          	auipc	ra,0x0
    800013fc:	d38080e7          	jalr	-712(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001400:	0005051b          	sext.w	a0,a0
    80001404:	00813083          	ld	ra,8(sp)
    80001408:	00013403          	ld	s0,0(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z11sem_trywaitP4SemC>:
int sem_trywait(sem_t id){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00113423          	sd	ra,8(sp)
    8000141c:	00813023          	sd	s0,0(sp)
    80001420:	01010413          	addi	s0,sp,16
    80001424:	00050593          	mv	a1,a0
    return (int) ecallWrapper(SEM_TRYWAIT_CODE,(uint64)id);
    80001428:	00000713          	li	a4,0
    8000142c:	00000693          	li	a3,0
    80001430:	00000613          	li	a2,0
    80001434:	02600513          	li	a0,38
    80001438:	00000097          	auipc	ra,0x0
    8000143c:	cf8080e7          	jalr	-776(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001440:	0005051b          	sext.w	a0,a0
    80001444:	00813083          	ld	ra,8(sp)
    80001448:	00013403          	ld	s0,0(sp)
    8000144c:	01010113          	addi	sp,sp,16
    80001450:	00008067          	ret

0000000080001454 <_Z10time_sleepm>:
int time_sleep (time_t time){
    80001454:	ff010113          	addi	sp,sp,-16
    80001458:	00113423          	sd	ra,8(sp)
    8000145c:	00813023          	sd	s0,0(sp)
    80001460:	01010413          	addi	s0,sp,16
    80001464:	00050593          	mv	a1,a0
    return (int) ecallWrapper((uint64)SLEEP_CODE,(uint64)time);
    80001468:	00000713          	li	a4,0
    8000146c:	00000693          	li	a3,0
    80001470:	00000613          	li	a2,0
    80001474:	03100513          	li	a0,49
    80001478:	00000097          	auipc	ra,0x0
    8000147c:	cb8080e7          	jalr	-840(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001480:	0005051b          	sext.w	a0,a0
    80001484:	00813083          	ld	ra,8(sp)
    80001488:	00013403          	ld	s0,0(sp)
    8000148c:	01010113          	addi	sp,sp,16
    80001490:	00008067          	ret

0000000080001494 <_Z4getcv>:
char getc (){
    80001494:	ff010113          	addi	sp,sp,-16
    80001498:	00113423          	sd	ra,8(sp)
    8000149c:	00813023          	sd	s0,0(sp)
    800014a0:	01010413          	addi	s0,sp,16
    return (char) ecallWrapper(GETC_CODE);
    800014a4:	00000713          	li	a4,0
    800014a8:	00000693          	li	a3,0
    800014ac:	00000613          	li	a2,0
    800014b0:	00000593          	li	a1,0
    800014b4:	04100513          	li	a0,65
    800014b8:	00000097          	auipc	ra,0x0
    800014bc:	c78080e7          	jalr	-904(ra) # 80001130 <_Z12ecallWrappermmmmm>
};
    800014c0:	0ff57513          	andi	a0,a0,255
    800014c4:	00813083          	ld	ra,8(sp)
    800014c8:	00013403          	ld	s0,0(sp)
    800014cc:	01010113          	addi	sp,sp,16
    800014d0:	00008067          	ret

00000000800014d4 <_Z4putcc>:
void putc (char c){
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    800014e4:	00050593          	mv	a1,a0
    ecallWrapper(PUTC_CODE,(uint64)c);
    800014e8:	00000713          	li	a4,0
    800014ec:	00000693          	li	a3,0
    800014f0:	00000613          	li	a2,0
    800014f4:	04200513          	li	a0,66
    800014f8:	00000097          	auipc	ra,0x0
    800014fc:	c38080e7          	jalr	-968(ra) # 80001130 <_Z12ecallWrappermmmmm>
}
    80001500:	00813083          	ld	ra,8(sp)
    80001504:	00013403          	ld	s0,0(sp)
    80001508:	01010113          	addi	sp,sp,16
    8000150c:	00008067          	ret

0000000080001510 <_ZN8IOBufferC1Ev>:
#include "../h/IOBuffer.hpp"
IOBuffer::IOBuffer(){
    80001510:	fe010113          	addi	sp,sp,-32
    80001514:	00113c23          	sd	ra,24(sp)
    80001518:	00813823          	sd	s0,16(sp)
    8000151c:	00913423          	sd	s1,8(sp)
    80001520:	01213023          	sd	s2,0(sp)
    80001524:	02010413          	addi	s0,sp,32
    80001528:	00050493          	mv	s1,a0
    8000152c:	00052823          	sw	zero,16(a0) # 10010 <_entry-0x7ffefff0>
    80001530:	00052a23          	sw	zero,20(a0)
    80001534:	00052c23          	sw	zero,24(a0)
    80001538:	10000793          	li	a5,256
    8000153c:	00f52e23          	sw	a5,28(a0)
    semIn=new SemC(0);
    80001540:	02800513          	li	a0,40
    80001544:	00001097          	auipc	ra,0x1
    80001548:	a40080e7          	jalr	-1472(ra) # 80001f84 <_ZN4SemCnwEm>
    8000154c:	00050913          	mv	s2,a0
    80001550:	00000593          	li	a1,0
    80001554:	00001097          	auipc	ra,0x1
    80001558:	8bc080e7          	jalr	-1860(ra) # 80001e10 <_ZN4SemCC1Ej>
    8000155c:	0124b023          	sd	s2,0(s1)
    semOut=new SemC(BUF_SIZE);
    80001560:	02800513          	li	a0,40
    80001564:	00001097          	auipc	ra,0x1
    80001568:	a20080e7          	jalr	-1504(ra) # 80001f84 <_ZN4SemCnwEm>
    8000156c:	00050913          	mv	s2,a0
    80001570:	10000593          	li	a1,256
    80001574:	00001097          	auipc	ra,0x1
    80001578:	89c080e7          	jalr	-1892(ra) # 80001e10 <_ZN4SemCC1Ej>
    8000157c:	0124b423          	sd	s2,8(s1)
}
    80001580:	01813083          	ld	ra,24(sp)
    80001584:	01013403          	ld	s0,16(sp)
    80001588:	00813483          	ld	s1,8(sp)
    8000158c:	00013903          	ld	s2,0(sp)
    80001590:	02010113          	addi	sp,sp,32
    80001594:	00008067          	ret
    80001598:	00050493          	mv	s1,a0
    semIn=new SemC(0);
    8000159c:	00090513          	mv	a0,s2
    800015a0:	00001097          	auipc	ra,0x1
    800015a4:	a7c080e7          	jalr	-1412(ra) # 8000201c <_ZN4SemCdlEPv>
    800015a8:	00048513          	mv	a0,s1
    800015ac:	0003a097          	auipc	ra,0x3a
    800015b0:	b5c080e7          	jalr	-1188(ra) # 8003b108 <_Unwind_Resume>
    800015b4:	00050493          	mv	s1,a0
    semOut=new SemC(BUF_SIZE);
    800015b8:	00090513          	mv	a0,s2
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	a60080e7          	jalr	-1440(ra) # 8000201c <_ZN4SemCdlEPv>
    800015c4:	00048513          	mv	a0,s1
    800015c8:	0003a097          	auipc	ra,0x3a
    800015cc:	b40080e7          	jalr	-1216(ra) # 8003b108 <_Unwind_Resume>

00000000800015d0 <_ZN8IOBuffer7putCharEc>:

void IOBuffer::putChar(char c) {
    800015d0:	fe010113          	addi	sp,sp,-32
    800015d4:	00113c23          	sd	ra,24(sp)
    800015d8:	00813823          	sd	s0,16(sp)
    800015dc:	00913423          	sd	s1,8(sp)
    800015e0:	01213023          	sd	s2,0(sp)
    800015e4:	02010413          	addi	s0,sp,32
    800015e8:	00050493          	mv	s1,a0
    800015ec:	00058913          	mv	s2,a1
    semOut->wait();
    800015f0:	00853503          	ld	a0,8(a0)
    800015f4:	00001097          	auipc	ra,0x1
    800015f8:	b2c080e7          	jalr	-1236(ra) # 80002120 <_ZN4SemC4waitEv>
    semIn->signal();
    800015fc:	0004b503          	ld	a0,0(s1)
    80001600:	00001097          	auipc	ra,0x1
    80001604:	cb0080e7          	jalr	-848(ra) # 800022b0 <_ZN4SemC6signalEv>
    buf[head]=c;
    80001608:	0104a783          	lw	a5,16(s1)
    8000160c:	00f48733          	add	a4,s1,a5
    80001610:	03270023          	sb	s2,32(a4)
    items++;
    80001614:	0184a703          	lw	a4,24(s1)
    80001618:	0017071b          	addiw	a4,a4,1
    8000161c:	00e4ac23          	sw	a4,24(s1)
    slots--;
    80001620:	01c4a703          	lw	a4,28(s1)
    80001624:	fff7071b          	addiw	a4,a4,-1
    80001628:	00e4ae23          	sw	a4,28(s1)
    head=head>=BUF_SIZE-1?0:head+1;
    8000162c:	0fe00713          	li	a4,254
    80001630:	02f74263          	blt	a4,a5,80001654 <_ZN8IOBuffer7putCharEc+0x84>
    80001634:	0017879b          	addiw	a5,a5,1
    80001638:	00f4a823          	sw	a5,16(s1)
}
    8000163c:	01813083          	ld	ra,24(sp)
    80001640:	01013403          	ld	s0,16(sp)
    80001644:	00813483          	ld	s1,8(sp)
    80001648:	00013903          	ld	s2,0(sp)
    8000164c:	02010113          	addi	sp,sp,32
    80001650:	00008067          	ret
    head=head>=BUF_SIZE-1?0:head+1;
    80001654:	00000793          	li	a5,0
    80001658:	fe1ff06f          	j	80001638 <_ZN8IOBuffer7putCharEc+0x68>

000000008000165c <_ZN8IOBuffer18putCharNonBlockingEc>:

void IOBuffer::putCharNonBlocking(char c) {
    8000165c:	fe010113          	addi	sp,sp,-32
    80001660:	00113c23          	sd	ra,24(sp)
    80001664:	00813823          	sd	s0,16(sp)
    80001668:	00913423          	sd	s1,8(sp)
    8000166c:	01213023          	sd	s2,0(sp)
    80001670:	02010413          	addi	s0,sp,32
    80001674:	00050493          	mv	s1,a0
    80001678:	00058913          	mv	s2,a1
    semOut->trywait();
    8000167c:	00853503          	ld	a0,8(a0)
    80001680:	00001097          	auipc	ra,0x1
    80001684:	8d4080e7          	jalr	-1836(ra) # 80001f54 <_ZN4SemC7trywaitEv>
    semIn->signal();
    80001688:	0004b503          	ld	a0,0(s1)
    8000168c:	00001097          	auipc	ra,0x1
    80001690:	c24080e7          	jalr	-988(ra) # 800022b0 <_ZN4SemC6signalEv>
    buf[head]=c;
    80001694:	0104a783          	lw	a5,16(s1)
    80001698:	00f48733          	add	a4,s1,a5
    8000169c:	03270023          	sb	s2,32(a4)
    items++;
    800016a0:	0184a703          	lw	a4,24(s1)
    800016a4:	0017071b          	addiw	a4,a4,1
    800016a8:	00e4ac23          	sw	a4,24(s1)
    slots--;
    800016ac:	01c4a703          	lw	a4,28(s1)
    800016b0:	fff7071b          	addiw	a4,a4,-1
    800016b4:	00e4ae23          	sw	a4,28(s1)
    head=head>=BUF_SIZE-1?0:head+1;
    800016b8:	0fe00713          	li	a4,254
    800016bc:	02f74263          	blt	a4,a5,800016e0 <_ZN8IOBuffer18putCharNonBlockingEc+0x84>
    800016c0:	0017879b          	addiw	a5,a5,1
    800016c4:	00f4a823          	sw	a5,16(s1)
}
    800016c8:	01813083          	ld	ra,24(sp)
    800016cc:	01013403          	ld	s0,16(sp)
    800016d0:	00813483          	ld	s1,8(sp)
    800016d4:	00013903          	ld	s2,0(sp)
    800016d8:	02010113          	addi	sp,sp,32
    800016dc:	00008067          	ret
    head=head>=BUF_SIZE-1?0:head+1;
    800016e0:	00000793          	li	a5,0
    800016e4:	fe1ff06f          	j	800016c4 <_ZN8IOBuffer18putCharNonBlockingEc+0x68>

00000000800016e8 <_ZN8IOBuffer18getCharNonBlockingEv>:

char IOBuffer::getCharNonBlocking() {
    800016e8:	fe010113          	addi	sp,sp,-32
    800016ec:	00113c23          	sd	ra,24(sp)
    800016f0:	00813823          	sd	s0,16(sp)
    800016f4:	00913423          	sd	s1,8(sp)
    800016f8:	02010413          	addi	s0,sp,32
    800016fc:	00050493          	mv	s1,a0
    semIn->trywait();
    80001700:	00053503          	ld	a0,0(a0)
    80001704:	00001097          	auipc	ra,0x1
    80001708:	850080e7          	jalr	-1968(ra) # 80001f54 <_ZN4SemC7trywaitEv>
    semOut->signal();
    8000170c:	0084b503          	ld	a0,8(s1)
    80001710:	00001097          	auipc	ra,0x1
    80001714:	ba0080e7          	jalr	-1120(ra) # 800022b0 <_ZN4SemC6signalEv>
    char ret=buf[tail];
    80001718:	0144a783          	lw	a5,20(s1)
    8000171c:	00f48733          	add	a4,s1,a5
    80001720:	02074503          	lbu	a0,32(a4)
    items--;
    80001724:	0184a703          	lw	a4,24(s1)
    80001728:	fff7071b          	addiw	a4,a4,-1
    8000172c:	00e4ac23          	sw	a4,24(s1)
    slots++;
    80001730:	01c4a703          	lw	a4,28(s1)
    80001734:	0017071b          	addiw	a4,a4,1
    80001738:	00e4ae23          	sw	a4,28(s1)
    tail=tail>=BUF_SIZE-1?0:tail+1;
    8000173c:	0fe00713          	li	a4,254
    80001740:	02f74063          	blt	a4,a5,80001760 <_ZN8IOBuffer18getCharNonBlockingEv+0x78>
    80001744:	0017879b          	addiw	a5,a5,1
    80001748:	00f4aa23          	sw	a5,20(s1)
    return ret;
}
    8000174c:	01813083          	ld	ra,24(sp)
    80001750:	01013403          	ld	s0,16(sp)
    80001754:	00813483          	ld	s1,8(sp)
    80001758:	02010113          	addi	sp,sp,32
    8000175c:	00008067          	ret
    tail=tail>=BUF_SIZE-1?0:tail+1;
    80001760:	00000793          	li	a5,0
    80001764:	fe5ff06f          	j	80001748 <_ZN8IOBuffer18getCharNonBlockingEv+0x60>

0000000080001768 <_ZN8IOBuffer7getCharEv>:
char IOBuffer::getChar() {
    80001768:	fe010113          	addi	sp,sp,-32
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	00813823          	sd	s0,16(sp)
    80001774:	00913423          	sd	s1,8(sp)
    80001778:	02010413          	addi	s0,sp,32
    8000177c:	00050493          	mv	s1,a0
    semIn->wait();
    80001780:	00053503          	ld	a0,0(a0)
    80001784:	00001097          	auipc	ra,0x1
    80001788:	99c080e7          	jalr	-1636(ra) # 80002120 <_ZN4SemC4waitEv>
    semOut->signal();
    8000178c:	0084b503          	ld	a0,8(s1)
    80001790:	00001097          	auipc	ra,0x1
    80001794:	b20080e7          	jalr	-1248(ra) # 800022b0 <_ZN4SemC6signalEv>
    char ret=buf[tail];
    80001798:	0144a783          	lw	a5,20(s1)
    8000179c:	00f48733          	add	a4,s1,a5
    800017a0:	02074503          	lbu	a0,32(a4)
    items--;
    800017a4:	0184a703          	lw	a4,24(s1)
    800017a8:	fff7071b          	addiw	a4,a4,-1
    800017ac:	00e4ac23          	sw	a4,24(s1)
    slots++;
    800017b0:	01c4a703          	lw	a4,28(s1)
    800017b4:	0017071b          	addiw	a4,a4,1
    800017b8:	00e4ae23          	sw	a4,28(s1)
    tail=tail>=BUF_SIZE-1?0:tail+1;
    800017bc:	0fe00713          	li	a4,254
    800017c0:	02f74063          	blt	a4,a5,800017e0 <_ZN8IOBuffer7getCharEv+0x78>
    800017c4:	0017879b          	addiw	a5,a5,1
    800017c8:	00f4aa23          	sw	a5,20(s1)
    return ret;
}
    800017cc:	01813083          	ld	ra,24(sp)
    800017d0:	01013403          	ld	s0,16(sp)
    800017d4:	00813483          	ld	s1,8(sp)
    800017d8:	02010113          	addi	sp,sp,32
    800017dc:	00008067          	ret
    tail=tail>=BUF_SIZE-1?0:tail+1;
    800017e0:	00000793          	li	a5,0
    800017e4:	fe5ff06f          	j	800017c8 <_ZN8IOBuffer7getCharEv+0x60>

00000000800017e8 <_ZNK8IOBuffer8getItemsEv>:

int IOBuffer::getItems() const {
    800017e8:	ff010113          	addi	sp,sp,-16
    800017ec:	00813423          	sd	s0,8(sp)
    800017f0:	01010413          	addi	s0,sp,16
    return items;
}
    800017f4:	01852503          	lw	a0,24(a0)
    800017f8:	00813403          	ld	s0,8(sp)
    800017fc:	01010113          	addi	sp,sp,16
    80001800:	00008067          	ret

0000000080001804 <_ZNK8IOBuffer8getSlotsEv>:

int IOBuffer::getSlots() const {
    80001804:	ff010113          	addi	sp,sp,-16
    80001808:	00813423          	sd	s0,8(sp)
    8000180c:	01010413          	addi	s0,sp,16
    return slots;
}
    80001810:	01c52503          	lw	a0,28(a0)
    80001814:	00813403          	ld	s0,8(sp)
    80001818:	01010113          	addi	sp,sp,16
    8000181c:	00008067          	ret

0000000080001820 <_Z13timedWaitTestv>:
    }
private:
    Semaphore* sem=semem;
    bool over=false;
};
void timedWaitTest(){
    80001820:	fe010113          	addi	sp,sp,-32
    80001824:	00113c23          	sd	ra,24(sp)
    80001828:	00813823          	sd	s0,16(sp)
    8000182c:	00913423          	sd	s1,8(sp)
    80001830:	01213023          	sd	s2,0(sp)
    80001834:	02010413          	addi	s0,sp,32
    semem=new Semaphore(0);
    80001838:	01000513          	li	a0,16
    8000183c:	00001097          	auipc	ra,0x1
    80001840:	e64080e7          	jalr	-412(ra) # 800026a0 <_Znwm>
    80001844:	00050493          	mv	s1,a0
    80001848:	00000593          	li	a1,0
    8000184c:	00001097          	auipc	ra,0x1
    80001850:	0fc080e7          	jalr	252(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80001854:	0000c797          	auipc	a5,0xc
    80001858:	cc97be23          	sd	s1,-804(a5) # 8000d530 <_ZL5semem>
    printString("a\n");
    8000185c:	00008517          	auipc	a0,0x8
    80001860:	7d450513          	addi	a0,a0,2004 # 8000a030 <CONSOLE_STATUS+0x20>
    80001864:	00005097          	auipc	ra,0x5
    80001868:	a9c080e7          	jalr	-1380(ra) # 80006300 <_Z11printStringPKc>
    T1* a=new T1(100);
    8000186c:	03800513          	li	a0,56
    80001870:	00001097          	auipc	ra,0x1
    80001874:	e30080e7          	jalr	-464(ra) # 800026a0 <_Znwm>
    80001878:	00050493          	mv	s1,a0
    T1(time_t w):waitTime(w){
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	f48080e7          	jalr	-184(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80001884:	0000c797          	auipc	a5,0xc
    80001888:	94478793          	addi	a5,a5,-1724 # 8000d1c8 <_ZTV2T1+0x10>
    8000188c:	00f4b023          	sd	a5,0(s1)
    80001890:	06400793          	li	a5,100
    80001894:	02f4b023          	sd	a5,32(s1)
    80001898:	0000c797          	auipc	a5,0xc
    8000189c:	c987b783          	ld	a5,-872(a5) # 8000d530 <_ZL5semem>
    800018a0:	02f4b423          	sd	a5,40(s1)
    800018a4:	02048823          	sb	zero,48(s1)
    printString("b\n");
    800018a8:	00008517          	auipc	a0,0x8
    800018ac:	79050513          	addi	a0,a0,1936 # 8000a038 <CONSOLE_STATUS+0x28>
    800018b0:	00005097          	auipc	ra,0x5
    800018b4:	a50080e7          	jalr	-1456(ra) # 80006300 <_Z11printStringPKc>
    T2* b=new T2();
    800018b8:	03000513          	li	a0,48
    800018bc:	00001097          	auipc	ra,0x1
    800018c0:	de4080e7          	jalr	-540(ra) # 800026a0 <_Znwm>
    800018c4:	00050913          	mv	s2,a0
    T2(){
    800018c8:	00001097          	auipc	ra,0x1
    800018cc:	efc080e7          	jalr	-260(ra) # 800027c4 <_ZN6ThreadC1Ev>
    800018d0:	0000c797          	auipc	a5,0xc
    800018d4:	92078793          	addi	a5,a5,-1760 # 8000d1f0 <_ZTV2T2+0x10>
    800018d8:	00f93023          	sd	a5,0(s2)
    800018dc:	0000c797          	auipc	a5,0xc
    800018e0:	c547b783          	ld	a5,-940(a5) # 8000d530 <_ZL5semem>
    800018e4:	02f93023          	sd	a5,32(s2)
    800018e8:	02090423          	sb	zero,40(s2)
    a->start();
    800018ec:	00048513          	mv	a0,s1
    800018f0:	00001097          	auipc	ra,0x1
    800018f4:	f20080e7          	jalr	-224(ra) # 80002810 <_ZN6Thread5startEv>
    b->start();
    800018f8:	00090513          	mv	a0,s2
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	f14080e7          	jalr	-236(ra) # 80002810 <_ZN6Thread5startEv>
        return over;
    80001904:	0304c783          	lbu	a5,48(s1)
    while(!(a->getOver()&&b->getOver())){}
    80001908:	fe078ee3          	beqz	a5,80001904 <_Z13timedWaitTestv+0xe4>
    bool getOver() const{return over;}
    8000190c:	02894783          	lbu	a5,40(s2)
    while(!(a->getOver()&&b->getOver())){}
    80001910:	fe078ae3          	beqz	a5,80001904 <_Z13timedWaitTestv+0xe4>
}
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	00013903          	ld	s2,0(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret
    8000192c:	00050913          	mv	s2,a0
    semem=new Semaphore(0);
    80001930:	00048513          	mv	a0,s1
    80001934:	00001097          	auipc	ra,0x1
    80001938:	d94080e7          	jalr	-620(ra) # 800026c8 <_ZdlPv>
    8000193c:	00090513          	mv	a0,s2
    80001940:	00039097          	auipc	ra,0x39
    80001944:	7c8080e7          	jalr	1992(ra) # 8003b108 <_Unwind_Resume>
    80001948:	00050913          	mv	s2,a0
    T1* a=new T1(100);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00001097          	auipc	ra,0x1
    80001954:	d78080e7          	jalr	-648(ra) # 800026c8 <_ZdlPv>
    80001958:	00090513          	mv	a0,s2
    8000195c:	00039097          	auipc	ra,0x39
    80001960:	7ac080e7          	jalr	1964(ra) # 8003b108 <_Unwind_Resume>
    80001964:	00050493          	mv	s1,a0
    T2* b=new T2();
    80001968:	00090513          	mv	a0,s2
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	d5c080e7          	jalr	-676(ra) # 800026c8 <_ZdlPv>
    80001974:	00048513          	mv	a0,s1
    80001978:	00039097          	auipc	ra,0x39
    8000197c:	790080e7          	jalr	1936(ra) # 8003b108 <_Unwind_Resume>

0000000080001980 <_ZN2T13runEv>:
    void run() override{
    80001980:	fe010113          	addi	sp,sp,-32
    80001984:	00113c23          	sd	ra,24(sp)
    80001988:	00813823          	sd	s0,16(sp)
    8000198c:	00913423          	sd	s1,8(sp)
    80001990:	02010413          	addi	s0,sp,32
    80001994:	00050493          	mv	s1,a0
        sem->timedWait(waitTime);
    80001998:	02053583          	ld	a1,32(a0)
    8000199c:	02853503          	ld	a0,40(a0)
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	078080e7          	jalr	120(ra) # 80002a18 <_ZN9Semaphore9timedWaitEm>
        printString("Prvi\n");
    800019a8:	00008517          	auipc	a0,0x8
    800019ac:	67850513          	addi	a0,a0,1656 # 8000a020 <CONSOLE_STATUS+0x10>
    800019b0:	00005097          	auipc	ra,0x5
    800019b4:	950080e7          	jalr	-1712(ra) # 80006300 <_Z11printStringPKc>
        sem->timedWait(waitTime);
    800019b8:	0204b583          	ld	a1,32(s1)
    800019bc:	0284b503          	ld	a0,40(s1)
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	058080e7          	jalr	88(ra) # 80002a18 <_ZN9Semaphore9timedWaitEm>
        printString("Drugi\n");
    800019c8:	00008517          	auipc	a0,0x8
    800019cc:	66050513          	addi	a0,a0,1632 # 8000a028 <CONSOLE_STATUS+0x18>
    800019d0:	00005097          	auipc	ra,0x5
    800019d4:	930080e7          	jalr	-1744(ra) # 80006300 <_Z11printStringPKc>
        over=true;
    800019d8:	00100793          	li	a5,1
    800019dc:	02f48823          	sb	a5,48(s1)
    }
    800019e0:	01813083          	ld	ra,24(sp)
    800019e4:	01013403          	ld	s0,16(sp)
    800019e8:	00813483          	ld	s1,8(sp)
    800019ec:	02010113          	addi	sp,sp,32
    800019f0:	00008067          	ret

00000000800019f4 <_ZN2T1D1Ev>:
class T1:public Thread{
    800019f4:	ff010113          	addi	sp,sp,-16
    800019f8:	00113423          	sd	ra,8(sp)
    800019fc:	00813023          	sd	s0,0(sp)
    80001a00:	01010413          	addi	s0,sp,16
    80001a04:	0000b797          	auipc	a5,0xb
    80001a08:	7c478793          	addi	a5,a5,1988 # 8000d1c8 <_ZTV2T1+0x10>
    80001a0c:	00f53023          	sd	a5,0(a0)
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	bec080e7          	jalr	-1044(ra) # 800025fc <_ZN6ThreadD1Ev>
    80001a18:	00813083          	ld	ra,8(sp)
    80001a1c:	00013403          	ld	s0,0(sp)
    80001a20:	01010113          	addi	sp,sp,16
    80001a24:	00008067          	ret

0000000080001a28 <_ZN2T1D0Ev>:
    80001a28:	fe010113          	addi	sp,sp,-32
    80001a2c:	00113c23          	sd	ra,24(sp)
    80001a30:	00813823          	sd	s0,16(sp)
    80001a34:	00913423          	sd	s1,8(sp)
    80001a38:	02010413          	addi	s0,sp,32
    80001a3c:	00050493          	mv	s1,a0
    80001a40:	0000b797          	auipc	a5,0xb
    80001a44:	78878793          	addi	a5,a5,1928 # 8000d1c8 <_ZTV2T1+0x10>
    80001a48:	00f53023          	sd	a5,0(a0)
    80001a4c:	00001097          	auipc	ra,0x1
    80001a50:	bb0080e7          	jalr	-1104(ra) # 800025fc <_ZN6ThreadD1Ev>
    80001a54:	00048513          	mv	a0,s1
    80001a58:	00001097          	auipc	ra,0x1
    80001a5c:	c70080e7          	jalr	-912(ra) # 800026c8 <_ZdlPv>
    80001a60:	01813083          	ld	ra,24(sp)
    80001a64:	01013403          	ld	s0,16(sp)
    80001a68:	00813483          	ld	s1,8(sp)
    80001a6c:	02010113          	addi	sp,sp,32
    80001a70:	00008067          	ret

0000000080001a74 <_ZN2T2D1Ev>:
class T2:public Thread{
    80001a74:	ff010113          	addi	sp,sp,-16
    80001a78:	00113423          	sd	ra,8(sp)
    80001a7c:	00813023          	sd	s0,0(sp)
    80001a80:	01010413          	addi	s0,sp,16
    80001a84:	0000b797          	auipc	a5,0xb
    80001a88:	76c78793          	addi	a5,a5,1900 # 8000d1f0 <_ZTV2T2+0x10>
    80001a8c:	00f53023          	sd	a5,0(a0)
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	b6c080e7          	jalr	-1172(ra) # 800025fc <_ZN6ThreadD1Ev>
    80001a98:	00813083          	ld	ra,8(sp)
    80001a9c:	00013403          	ld	s0,0(sp)
    80001aa0:	01010113          	addi	sp,sp,16
    80001aa4:	00008067          	ret

0000000080001aa8 <_ZN2T2D0Ev>:
    80001aa8:	fe010113          	addi	sp,sp,-32
    80001aac:	00113c23          	sd	ra,24(sp)
    80001ab0:	00813823          	sd	s0,16(sp)
    80001ab4:	00913423          	sd	s1,8(sp)
    80001ab8:	02010413          	addi	s0,sp,32
    80001abc:	00050493          	mv	s1,a0
    80001ac0:	0000b797          	auipc	a5,0xb
    80001ac4:	73078793          	addi	a5,a5,1840 # 8000d1f0 <_ZTV2T2+0x10>
    80001ac8:	00f53023          	sd	a5,0(a0)
    80001acc:	00001097          	auipc	ra,0x1
    80001ad0:	b30080e7          	jalr	-1232(ra) # 800025fc <_ZN6ThreadD1Ev>
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00001097          	auipc	ra,0x1
    80001adc:	bf0080e7          	jalr	-1040(ra) # 800026c8 <_ZdlPv>
    80001ae0:	01813083          	ld	ra,24(sp)
    80001ae4:	01013403          	ld	s0,16(sp)
    80001ae8:	00813483          	ld	s1,8(sp)
    80001aec:	02010113          	addi	sp,sp,32
    80001af0:	00008067          	ret

0000000080001af4 <_ZN2T23runEv>:
    void run() override{
    80001af4:	fe010113          	addi	sp,sp,-32
    80001af8:	00113c23          	sd	ra,24(sp)
    80001afc:	00813823          	sd	s0,16(sp)
    80001b00:	00913423          	sd	s1,8(sp)
    80001b04:	02010413          	addi	s0,sp,32
    80001b08:	00050493          	mv	s1,a0
        sleep(20);
    80001b0c:	01400513          	li	a0,20
    80001b10:	00001097          	auipc	ra,0x1
    80001b14:	d54080e7          	jalr	-684(ra) # 80002864 <_ZN6Thread5sleepEm>
        sem->signal();
    80001b18:	0204b503          	ld	a0,32(s1)
    80001b1c:	00001097          	auipc	ra,0x1
    80001b20:	ea4080e7          	jalr	-348(ra) # 800029c0 <_ZN9Semaphore6signalEv>
        over=true;
    80001b24:	00100793          	li	a5,1
    80001b28:	02f48423          	sb	a5,40(s1)
    }
    80001b2c:	01813083          	ld	ra,24(sp)
    80001b30:	01013403          	ld	s0,16(sp)
    80001b34:	00813483          	ld	s1,8(sp)
    80001b38:	02010113          	addi	sp,sp,32
    80001b3c:	00008067          	ret

0000000080001b40 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "../test/System_Mode_test.hpp"

#endif

void userMain() {
    80001b40:	fe010113          	addi	sp,sp,-32
    80001b44:	00113c23          	sd	ra,24(sp)
    80001b48:	00813823          	sd	s0,16(sp)
    80001b4c:	00913423          	sd	s1,8(sp)
    80001b50:	02010413          	addi	s0,sp,32
    /*for(int i=0;i<5;i++){
        char c=getc();
        putc(c);
    }*/
    printString("Unesite broj testa? [1-7]\n");
    80001b54:	00008517          	auipc	a0,0x8
    80001b58:	4ec50513          	addi	a0,a0,1260 # 8000a040 <CONSOLE_STATUS+0x30>
    80001b5c:	00004097          	auipc	ra,0x4
    80001b60:	7a4080e7          	jalr	1956(ra) # 80006300 <_Z11printStringPKc>
    int test = getc() - '0';
    80001b64:	00000097          	auipc	ra,0x0
    80001b68:	930080e7          	jalr	-1744(ra) # 80001494 <_Z4getcv>
    80001b6c:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	924080e7          	jalr	-1756(ra) # 80001494 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80001b78:	00900793          	li	a5,9
    80001b7c:	1497ec63          	bltu	a5,s1,80001cd4 <_Z8userMainv+0x194>
    80001b80:	00249493          	slli	s1,s1,0x2
    80001b84:	00008717          	auipc	a4,0x8
    80001b88:	72c70713          	addi	a4,a4,1836 # 8000a2b0 <CONSOLE_STATUS+0x2a0>
    80001b8c:	00e484b3          	add	s1,s1,a4
    80001b90:	0004a783          	lw	a5,0(s1)
    80001b94:	00e787b3          	add	a5,a5,a4
    80001b98:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80001b9c:	00004097          	auipc	ra,0x4
    80001ba0:	ddc080e7          	jalr	-548(ra) # 80005978 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80001ba4:	00008517          	auipc	a0,0x8
    80001ba8:	4bc50513          	addi	a0,a0,1212 # 8000a060 <CONSOLE_STATUS+0x50>
    80001bac:	00004097          	auipc	ra,0x4
    80001bb0:	754080e7          	jalr	1876(ra) # 80006300 <_Z11printStringPKc>
            break;
#endif
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80001bb4:	01813083          	ld	ra,24(sp)
    80001bb8:	01013403          	ld	s0,16(sp)
    80001bbc:	00813483          	ld	s1,8(sp)
    80001bc0:	02010113          	addi	sp,sp,32
    80001bc4:	00008067          	ret
            Threads_CPP_API_test();
    80001bc8:	00003097          	auipc	ra,0x3
    80001bcc:	c90080e7          	jalr	-880(ra) # 80004858 <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80001bd0:	00008517          	auipc	a0,0x8
    80001bd4:	4d050513          	addi	a0,a0,1232 # 8000a0a0 <CONSOLE_STATUS+0x90>
    80001bd8:	00004097          	auipc	ra,0x4
    80001bdc:	728080e7          	jalr	1832(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001be0:	fd5ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            producerConsumer_C_API();
    80001be4:	00002097          	auipc	ra,0x2
    80001be8:	4c8080e7          	jalr	1224(ra) # 800040ac <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80001bec:	00008517          	auipc	a0,0x8
    80001bf0:	4f450513          	addi	a0,a0,1268 # 8000a0e0 <CONSOLE_STATUS+0xd0>
    80001bf4:	00004097          	auipc	ra,0x4
    80001bf8:	70c080e7          	jalr	1804(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001bfc:	fb9ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    80001c00:	00004097          	auipc	ra,0x4
    80001c04:	0bc080e7          	jalr	188(ra) # 80005cbc <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80001c08:	00008517          	auipc	a0,0x8
    80001c0c:	52850513          	addi	a0,a0,1320 # 8000a130 <CONSOLE_STATUS+0x120>
    80001c10:	00004097          	auipc	ra,0x4
    80001c14:	6f0080e7          	jalr	1776(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001c18:	f9dff06f          	j	80001bb4 <_Z8userMainv+0x74>
            testSleeping();
    80001c1c:	00005097          	auipc	ra,0x5
    80001c20:	e50080e7          	jalr	-432(ra) # 80006a6c <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80001c24:	00008517          	auipc	a0,0x8
    80001c28:	56450513          	addi	a0,a0,1380 # 8000a188 <CONSOLE_STATUS+0x178>
    80001c2c:	00004097          	auipc	ra,0x4
    80001c30:	6d4080e7          	jalr	1748(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001c34:	f81ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            testConsumerProducer();
    80001c38:	00003097          	auipc	ra,0x3
    80001c3c:	0e0080e7          	jalr	224(ra) # 80004d18 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80001c40:	00008517          	auipc	a0,0x8
    80001c44:	57850513          	addi	a0,a0,1400 # 8000a1b8 <CONSOLE_STATUS+0x1a8>
    80001c48:	00004097          	auipc	ra,0x4
    80001c4c:	6b8080e7          	jalr	1720(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001c50:	f65ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            System_Mode_test();
    80001c54:	00005097          	auipc	ra,0x5
    80001c58:	38c080e7          	jalr	908(ra) # 80006fe0 <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80001c5c:	00008517          	auipc	a0,0x8
    80001c60:	59c50513          	addi	a0,a0,1436 # 8000a1f8 <CONSOLE_STATUS+0x1e8>
    80001c64:	00004097          	auipc	ra,0x4
    80001c68:	69c080e7          	jalr	1692(ra) # 80006300 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80001c6c:	00008517          	auipc	a0,0x8
    80001c70:	5ac50513          	addi	a0,a0,1452 # 8000a218 <CONSOLE_STATUS+0x208>
    80001c74:	00004097          	auipc	ra,0x4
    80001c78:	68c080e7          	jalr	1676(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001c7c:	f39ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            periodicTest();
    80001c80:	00006097          	auipc	ra,0x6
    80001c84:	924080e7          	jalr	-1756(ra) # 800075a4 <_Z12periodicTestv>
            printString("TEST 8");
    80001c88:	00008517          	auipc	a0,0x8
    80001c8c:	5e850513          	addi	a0,a0,1512 # 8000a270 <CONSOLE_STATUS+0x260>
    80001c90:	00004097          	auipc	ra,0x4
    80001c94:	670080e7          	jalr	1648(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001c98:	f1dff06f          	j	80001bb4 <_Z8userMainv+0x74>
            timedWaitTest();
    80001c9c:	00000097          	auipc	ra,0x0
    80001ca0:	b84080e7          	jalr	-1148(ra) # 80001820 <_Z13timedWaitTestv>
            printString("TEST 9");
    80001ca4:	00008517          	auipc	a0,0x8
    80001ca8:	5d450513          	addi	a0,a0,1492 # 8000a278 <CONSOLE_STATUS+0x268>
    80001cac:	00004097          	auipc	ra,0x4
    80001cb0:	654080e7          	jalr	1620(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001cb4:	f01ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            allocTest();
    80001cb8:	00005097          	auipc	ra,0x5
    80001cbc:	424080e7          	jalr	1060(ra) # 800070dc <_Z9allocTestv>
            printString("TEST 0\n");
    80001cc0:	00008517          	auipc	a0,0x8
    80001cc4:	5c050513          	addi	a0,a0,1472 # 8000a280 <CONSOLE_STATUS+0x270>
    80001cc8:	00004097          	auipc	ra,0x4
    80001ccc:	638080e7          	jalr	1592(ra) # 80006300 <_Z11printStringPKc>
            break;
    80001cd0:	ee5ff06f          	j	80001bb4 <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80001cd4:	00008517          	auipc	a0,0x8
    80001cd8:	5b450513          	addi	a0,a0,1460 # 8000a288 <CONSOLE_STATUS+0x278>
    80001cdc:	00004097          	auipc	ra,0x4
    80001ce0:	624080e7          	jalr	1572(ra) # 80006300 <_Z11printStringPKc>
    80001ce4:	ed1ff06f          	j	80001bb4 <_Z8userMainv+0x74>

0000000080001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>:
#include "../h/Scheduler.hpp"
#include "../h/TCB.hpp"
Scheduler &Scheduler::getSchedulerInstance() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    static Scheduler instance;
    return instance;
}
    80001cf4:	0000c517          	auipc	a0,0xc
    80001cf8:	84450513          	addi	a0,a0,-1980 # 8000d538 <_ZZN9Scheduler20getSchedulerInstanceEvE8instance>
    80001cfc:	00813403          	ld	s0,8(sp)
    80001d00:	01010113          	addi	sp,sp,16
    80001d04:	00008067          	ret

0000000080001d08 <_ZN9Scheduler3putEP3TCB>:

void Scheduler::put(TCB *t) {
    80001d08:	ff010113          	addi	sp,sp,-16
    80001d0c:	00813423          	sd	s0,8(sp)
    80001d10:	01010413          	addi	s0,sp,16
    if(!head){
    80001d14:	00853783          	ld	a5,8(a0)
    80001d18:	02078463          	beqz	a5,80001d40 <_ZN9Scheduler3putEP3TCB+0x38>
        head=t;
        tail=t;
        threadCnt++;
        return;
    }
    threadCnt++;
    80001d1c:	00052783          	lw	a5,0(a0)
    80001d20:	0017879b          	addiw	a5,a5,1
    80001d24:	00f52023          	sw	a5,0(a0)
    tail->nextReady=t;
    80001d28:	01053783          	ld	a5,16(a0)
    80001d2c:	04b7b823          	sd	a1,80(a5)
    tail=t;
    80001d30:	00b53823          	sd	a1,16(a0)
}
    80001d34:	00813403          	ld	s0,8(sp)
    80001d38:	01010113          	addi	sp,sp,16
    80001d3c:	00008067          	ret
        head=t;
    80001d40:	00b53423          	sd	a1,8(a0)
        tail=t;
    80001d44:	00b53823          	sd	a1,16(a0)
        threadCnt++;
    80001d48:	00052783          	lw	a5,0(a0)
    80001d4c:	0017879b          	addiw	a5,a5,1
    80001d50:	00f52023          	sw	a5,0(a0)
        return;
    80001d54:	fe1ff06f          	j	80001d34 <_ZN9Scheduler3putEP3TCB+0x2c>

0000000080001d58 <_ZN9Scheduler3getEv>:

TCB *Scheduler::get() {
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00813423          	sd	s0,8(sp)
    80001d60:	01010413          	addi	s0,sp,16
    80001d64:	00050793          	mv	a5,a0
    if(!head) return nullptr;
    80001d68:	00853503          	ld	a0,8(a0)
    80001d6c:	00050e63          	beqz	a0,80001d88 <_ZN9Scheduler3getEv+0x30>
    TCB* t=head;
    head=head->nextReady;
    80001d70:	05053703          	ld	a4,80(a0)
    80001d74:	00e7b423          	sd	a4,8(a5)
    t->nextReady=nullptr;
    80001d78:	04053823          	sd	zero,80(a0)
    threadCnt--;
    80001d7c:	0007a703          	lw	a4,0(a5)
    80001d80:	fff7071b          	addiw	a4,a4,-1
    80001d84:	00e7a023          	sw	a4,0(a5)
    return t;
}
    80001d88:	00813403          	ld	s0,8(sp)
    80001d8c:	01010113          	addi	sp,sp,16
    80001d90:	00008067          	ret

0000000080001d94 <_ZNK9Scheduler12getThreadCntEv>:

int Scheduler::getThreadCnt() const{
    80001d94:	ff010113          	addi	sp,sp,-16
    80001d98:	00813423          	sd	s0,8(sp)
    80001d9c:	01010413          	addi	s0,sp,16
    return threadCnt;
    80001da0:	00052503          	lw	a0,0(a0)
    80001da4:	00813403          	ld	s0,8(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_Z41__static_initialization_and_destruction_0ii>:
    if(t->getTimedWaitSem()==this){
        SleepQueue &sl=SleepQueue::getSleepQueueInstance();
        sl.removeInterrupted(t);
    }
    s.put(t);
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00813423          	sd	s0,8(sp)
    80001db8:	01010413          	addi	s0,sp,16
    80001dbc:	00100793          	li	a5,1
    80001dc0:	00f50863          	beq	a0,a5,80001dd0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80001dc4:	00813403          	ld	s0,8(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret
    80001dd0:	000107b7          	lui	a5,0x10
    80001dd4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001dd8:	fef596e3          	bne	a1,a5,80001dc4 <_Z41__static_initialization_and_destruction_0ii+0x14>
#define PROJECT_BASE_V1_1_2_KERNELRESOURCEMANAGER_HPP
#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
template<typename T> class KernelResourceManager{
public:
    KernelResourceManager(){
    80001ddc:	00015797          	auipc	a5,0x15
    80001de0:	7607ae23          	sw	zero,1916(a5) # 80017558 <_ZN4SemC18semaphoreAllocatorE+0xa000>
        for(int i=0;i<DEFAULT_SIZE;i++){
    80001de4:	00000793          	li	a5,0
    80001de8:	3ff00713          	li	a4,1023
    80001dec:	fcf74ce3          	blt	a4,a5,80001dc4 <_Z41__static_initialization_and_destruction_0ii+0x14>
            occupied[i]=false;
    80001df0:	0000b717          	auipc	a4,0xb
    80001df4:	76870713          	addi	a4,a4,1896 # 8000d558 <_ZN4SemC18semaphoreAllocatorE>
    80001df8:	00f706b3          	add	a3,a4,a5
    80001dfc:	0000a737          	lui	a4,0xa
    80001e00:	00d70733          	add	a4,a4,a3
    80001e04:	00070223          	sb	zero,4(a4) # a004 <_entry-0x7fff5ffc>
        for(int i=0;i<DEFAULT_SIZE;i++){
    80001e08:	0017879b          	addiw	a5,a5,1
    80001e0c:	fddff06f          	j	80001de8 <_Z41__static_initialization_and_destruction_0ii+0x38>

0000000080001e10 <_ZN4SemCC1Ej>:
SemC::SemC(unsigned int v):val((int)v) {
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00813423          	sd	s0,8(sp)
    80001e18:	01010413          	addi	s0,sp,16
    80001e1c:	00050023          	sb	zero,0(a0)
    80001e20:	00b52223          	sw	a1,4(a0)
    80001e24:	00053423          	sd	zero,8(a0)
    80001e28:	00053823          	sd	zero,16(a0)
    80001e2c:	00052c23          	sw	zero,24(a0)
    resourceId=sid;
    80001e30:	0000b797          	auipc	a5,0xb
    80001e34:	7207a783          	lw	a5,1824(a5) # 8000d550 <_ZN4SemC3sidE>
    80001e38:	02f52023          	sw	a5,32(a0)
}
    80001e3c:	00813403          	ld	s0,8(sp)
    80001e40:	01010113          	addi	sp,sp,16
    80001e44:	00008067          	ret

0000000080001e48 <_ZN4SemC9timedwaitEm>:
int SemC::timedwait(time_t time) {
    80001e48:	fd010113          	addi	sp,sp,-48
    80001e4c:	02113423          	sd	ra,40(sp)
    80001e50:	02813023          	sd	s0,32(sp)
    80001e54:	00913c23          	sd	s1,24(sp)
    80001e58:	01213823          	sd	s2,16(sp)
    80001e5c:	01313423          	sd	s3,8(sp)
    80001e60:	03010413          	addi	s0,sp,48
    80001e64:	00050493          	mv	s1,a0
    if(--val<0){
    80001e68:	00452783          	lw	a5,4(a0)
    80001e6c:	fff7879b          	addiw	a5,a5,-1
    80001e70:	00f52223          	sw	a5,4(a0)
    80001e74:	02079713          	slli	a4,a5,0x20
    80001e78:	02074663          	bltz	a4,80001ea4 <_ZN4SemC9timedwaitEm+0x5c>
    if(isClosing){
    80001e7c:	00054783          	lbu	a5,0(a0)
    80001e80:	0c079663          	bnez	a5,80001f4c <_ZN4SemC9timedwaitEm+0x104>
    return 0;
    80001e84:	00000513          	li	a0,0
}
    80001e88:	02813083          	ld	ra,40(sp)
    80001e8c:	02013403          	ld	s0,32(sp)
    80001e90:	01813483          	ld	s1,24(sp)
    80001e94:	01013903          	ld	s2,16(sp)
    80001e98:	00813983          	ld	s3,8(sp)
    80001e9c:	03010113          	addi	sp,sp,48
    80001ea0:	00008067          	ret
    80001ea4:	00058913          	mv	s2,a1
        TCB* thr=TCB::getRunning();
    80001ea8:	00001097          	auipc	ra,0x1
    80001eac:	1b8080e7          	jalr	440(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80001eb0:	00050993          	mv	s3,a0
        thr->setTimedWaitSem(this);
    80001eb4:	00048593          	mv	a1,s1
    80001eb8:	00001097          	auipc	ra,0x1
    80001ebc:	24c080e7          	jalr	588(ra) # 80003104 <_ZN3TCB15setTimedWaitSemEP4SemC>
        queue.put(thr);
    80001ec0:	00098593          	mv	a1,s3
    80001ec4:	00848513          	addi	a0,s1,8
    80001ec8:	00002097          	auipc	ra,0x2
    80001ecc:	ea0080e7          	jalr	-352(ra) # 80003d68 <_ZN12BlockedQueue3putEP3TCB>
        SleepQueue &sl=SleepQueue::getSleepQueueInstance();
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	c74080e7          	jalr	-908(ra) # 80002b44 <_ZN10SleepQueue21getSleepQueueInstanceEv>
        sl.put(thr, time);
    80001ed8:	00090613          	mv	a2,s2
    80001edc:	00098593          	mv	a1,s3
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	ce4080e7          	jalr	-796(ra) # 80002bc4 <_ZN10SleepQueue3putEP3TCBm>
        if(isClosing){
    80001ee8:	0004c783          	lbu	a5,0(s1)
    80001eec:	02079863          	bnez	a5,80001f1c <_ZN4SemC9timedwaitEm+0xd4>
        if(TCB::getRunning()->getInterruptedWhileWaiting()){
    80001ef0:	00001097          	auipc	ra,0x1
    80001ef4:	170080e7          	jalr	368(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80001ef8:	00001097          	auipc	ra,0x1
    80001efc:	244080e7          	jalr	580(ra) # 8000313c <_ZNK3TCB26getInterruptedWhileWaitingEv>
    80001f00:	02051a63          	bnez	a0,80001f34 <_ZN4SemC9timedwaitEm+0xec>
        TCB::getRunning()->resetInterruptedWhileWaiting();
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	15c080e7          	jalr	348(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80001f0c:	00001097          	auipc	ra,0x1
    80001f10:	24c080e7          	jalr	588(ra) # 80003158 <_ZN3TCB28resetInterruptedWhileWaitingEv>
        return 0;
    80001f14:	00000513          	li	a0,0
    80001f18:	f71ff06f          	j	80001e88 <_ZN4SemC9timedwaitEm+0x40>
            TCB::getRunning()->resetInterruptedWhileWaiting();
    80001f1c:	00001097          	auipc	ra,0x1
    80001f20:	144080e7          	jalr	324(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80001f24:	00001097          	auipc	ra,0x1
    80001f28:	234080e7          	jalr	564(ra) # 80003158 <_ZN3TCB28resetInterruptedWhileWaitingEv>
            return -1;
    80001f2c:	fff00513          	li	a0,-1
    80001f30:	f59ff06f          	j	80001e88 <_ZN4SemC9timedwaitEm+0x40>
            TCB::getRunning()->resetInterruptedWhileWaiting();
    80001f34:	00001097          	auipc	ra,0x1
    80001f38:	12c080e7          	jalr	300(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80001f3c:	00001097          	auipc	ra,0x1
    80001f40:	21c080e7          	jalr	540(ra) # 80003158 <_ZN3TCB28resetInterruptedWhileWaitingEv>
            return -2;
    80001f44:	ffe00513          	li	a0,-2
    80001f48:	f41ff06f          	j	80001e88 <_ZN4SemC9timedwaitEm+0x40>
        return -1;
    80001f4c:	fff00513          	li	a0,-1
    80001f50:	f39ff06f          	j	80001e88 <_ZN4SemC9timedwaitEm+0x40>

0000000080001f54 <_ZN4SemC7trywaitEv>:
int SemC::trywait() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00813423          	sd	s0,8(sp)
    80001f5c:	01010413          	addi	s0,sp,16
    val--;
    80001f60:	00452783          	lw	a5,4(a0)
    80001f64:	fff7879b          	addiw	a5,a5,-1
    80001f68:	0007871b          	sext.w	a4,a5
    80001f6c:	00f52223          	sw	a5,4(a0)
    return val>=0;
    80001f70:	fff74513          	not	a0,a4
}
    80001f74:	01f5551b          	srliw	a0,a0,0x1f
    80001f78:	00813403          	ld	s0,8(sp)
    80001f7c:	01010113          	addi	sp,sp,16
    80001f80:	00008067          	ret

0000000080001f84 <_ZN4SemCnwEm>:
void *SemC::operator new(size_t) {
    80001f84:	ff010113          	addi	sp,sp,-16
    80001f88:	00813423          	sd	s0,8(sp)
    80001f8c:	01010413          	addi	s0,sp,16
        }
    };
    void* allocResource(int &id){
        if(indexFree>=DEFAULT_SIZE) return nullptr;
    80001f90:	00015797          	auipc	a5,0x15
    80001f94:	5c87a783          	lw	a5,1480(a5) # 80017558 <_ZN4SemC18semaphoreAllocatorE+0xa000>
    80001f98:	3ff00713          	li	a4,1023
    80001f9c:	06f74c63          	blt	a4,a5,80002014 <_ZN4SemCnwEm+0x90>
        void *ret=&resourceBlock[indexFree*sizeof (T)];
    80001fa0:	00279713          	slli	a4,a5,0x2
    80001fa4:	00f70733          	add	a4,a4,a5
    80001fa8:	00371513          	slli	a0,a4,0x3
    80001fac:	0000b717          	auipc	a4,0xb
    80001fb0:	5ac70713          	addi	a4,a4,1452 # 8000d558 <_ZN4SemC18semaphoreAllocatorE>
    80001fb4:	00e50533          	add	a0,a0,a4
        occupied[indexFree]=true;
    80001fb8:	00f70733          	add	a4,a4,a5
    80001fbc:	0000a6b7          	lui	a3,0xa
    80001fc0:	00e68733          	add	a4,a3,a4
    80001fc4:	00100693          	li	a3,1
    80001fc8:	00d70223          	sb	a3,4(a4)
        id=indexFree;
    80001fcc:	0000b717          	auipc	a4,0xb
    80001fd0:	58f72223          	sw	a5,1412(a4) # 8000d550 <_ZN4SemC3sidE>
        int i;
        for(i=indexFree;i<DEFAULT_SIZE;i++){
    80001fd4:	3ff00713          	li	a4,1023
    80001fd8:	02f74463          	blt	a4,a5,80002000 <_ZN4SemCnwEm+0x7c>
            if(!occupied[i]) break;
    80001fdc:	0000b717          	auipc	a4,0xb
    80001fe0:	57c70713          	addi	a4,a4,1404 # 8000d558 <_ZN4SemC18semaphoreAllocatorE>
    80001fe4:	00f706b3          	add	a3,a4,a5
    80001fe8:	0000a737          	lui	a4,0xa
    80001fec:	00d70733          	add	a4,a4,a3
    80001ff0:	00474703          	lbu	a4,4(a4) # a004 <_entry-0x7fff5ffc>
    80001ff4:	00070663          	beqz	a4,80002000 <_ZN4SemCnwEm+0x7c>
        for(i=indexFree;i<DEFAULT_SIZE;i++){
    80001ff8:	0017879b          	addiw	a5,a5,1
    80001ffc:	fd9ff06f          	j	80001fd4 <_ZN4SemCnwEm+0x50>
        }
        indexFree=i;
    80002000:	00015717          	auipc	a4,0x15
    80002004:	54f72c23          	sw	a5,1368(a4) # 80017558 <_ZN4SemC18semaphoreAllocatorE+0xa000>
}
    80002008:	00813403          	ld	s0,8(sp)
    8000200c:	01010113          	addi	sp,sp,16
    80002010:	00008067          	ret
        if(indexFree>=DEFAULT_SIZE) return nullptr;
    80002014:	00000513          	li	a0,0
    return semaphoreAllocator.allocResource(sid);
    80002018:	ff1ff06f          	j	80002008 <_ZN4SemCnwEm+0x84>

000000008000201c <_ZN4SemCdlEPv>:
void SemC::operator delete(void *ptr) {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00813423          	sd	s0,8(sp)
    80002024:	01010413          	addi	s0,sp,16
    semaphoreAllocator.deallocResource(s->resourceId);
    80002028:	02052683          	lw	a3,32(a0)
        return ret;
    };
    //T* getResource(uint64 id);
    void deallocResource(int id){
        occupied[id]=false;
    8000202c:	0000b797          	auipc	a5,0xb
    80002030:	52c78793          	addi	a5,a5,1324 # 8000d558 <_ZN4SemC18semaphoreAllocatorE>
    80002034:	00d78733          	add	a4,a5,a3
    80002038:	0000a7b7          	lui	a5,0xa
    8000203c:	00e787b3          	add	a5,a5,a4
    80002040:	00078223          	sb	zero,4(a5) # a004 <_entry-0x7fff5ffc>
        if(indexFree>id){
    80002044:	00015797          	auipc	a5,0x15
    80002048:	5147a783          	lw	a5,1300(a5) # 80017558 <_ZN4SemC18semaphoreAllocatorE+0xa000>
    8000204c:	00f6d663          	bge	a3,a5,80002058 <_ZN4SemCdlEPv+0x3c>
            indexFree=id;
    80002050:	00015797          	auipc	a5,0x15
    80002054:	50d7a423          	sw	a3,1288(a5) # 80017558 <_ZN4SemC18semaphoreAllocatorE+0xa000>
}
    80002058:	00813403          	ld	s0,8(sp)
    8000205c:	01010113          	addi	sp,sp,16
    80002060:	00008067          	ret

0000000080002064 <_ZN4SemC5blockEv>:
void SemC::block() {
    80002064:	fd010113          	addi	sp,sp,-48
    80002068:	02113423          	sd	ra,40(sp)
    8000206c:	02813023          	sd	s0,32(sp)
    80002070:	00913c23          	sd	s1,24(sp)
    80002074:	01213823          	sd	s2,16(sp)
    80002078:	01313423          	sd	s3,8(sp)
    8000207c:	01413023          	sd	s4,0(sp)
    80002080:	03010413          	addi	s0,sp,48
    80002084:	00050993          	mv	s3,a0
    Scheduler &s=Scheduler::getSchedulerInstance();
    80002088:	00000097          	auipc	ra,0x0
    8000208c:	c60080e7          	jalr	-928(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    80002090:	00050a13          	mv	s4,a0
    TCB* newThread=s.get();
    80002094:	00000097          	auipc	ra,0x0
    80002098:	cc4080e7          	jalr	-828(ra) # 80001d58 <_ZN9Scheduler3getEv>
    8000209c:	00050493          	mv	s1,a0
    TCB* oldThread=TCB::getRunning();
    800020a0:	00001097          	auipc	ra,0x1
    800020a4:	fc0080e7          	jalr	-64(ra) # 80003060 <_ZN3TCB10getRunningEv>
    800020a8:	00050913          	mv	s2,a0
    if(newThread==oldThread&&s.getThreadCnt()){
    800020ac:	04a48863          	beq	s1,a0,800020fc <_ZN4SemC5blockEv+0x98>
    queue.put(oldThread);
    800020b0:	00090593          	mv	a1,s2
    800020b4:	00898513          	addi	a0,s3,8
    800020b8:	00002097          	auipc	ra,0x2
    800020bc:	cb0080e7          	jalr	-848(ra) # 80003d68 <_ZN12BlockedQueue3putEP3TCB>
    TCB::setRunning(newThread);
    800020c0:	00048513          	mv	a0,s1
    800020c4:	00001097          	auipc	ra,0x1
    800020c8:	fbc080e7          	jalr	-68(ra) # 80003080 <_ZN3TCB10setRunningEPS_>
    TCB::yield(oldThread,newThread);
    800020cc:	00048593          	mv	a1,s1
    800020d0:	00090513          	mv	a0,s2
    800020d4:	00001097          	auipc	ra,0x1
    800020d8:	0e0080e7          	jalr	224(ra) # 800031b4 <_ZN3TCB5yieldEPS_S0_>
}
    800020dc:	02813083          	ld	ra,40(sp)
    800020e0:	02013403          	ld	s0,32(sp)
    800020e4:	01813483          	ld	s1,24(sp)
    800020e8:	01013903          	ld	s2,16(sp)
    800020ec:	00813983          	ld	s3,8(sp)
    800020f0:	00013a03          	ld	s4,0(sp)
    800020f4:	03010113          	addi	sp,sp,48
    800020f8:	00008067          	ret
    if(newThread==oldThread&&s.getThreadCnt()){
    800020fc:	000a0513          	mv	a0,s4
    80002100:	00000097          	auipc	ra,0x0
    80002104:	c94080e7          	jalr	-876(ra) # 80001d94 <_ZNK9Scheduler12getThreadCntEv>
    80002108:	fa0504e3          	beqz	a0,800020b0 <_ZN4SemC5blockEv+0x4c>
        newThread=s.get();
    8000210c:	000a0513          	mv	a0,s4
    80002110:	00000097          	auipc	ra,0x0
    80002114:	c48080e7          	jalr	-952(ra) # 80001d58 <_ZN9Scheduler3getEv>
    80002118:	00050493          	mv	s1,a0
    8000211c:	f95ff06f          	j	800020b0 <_ZN4SemC5blockEv+0x4c>

0000000080002120 <_ZN4SemC4waitEv>:
int SemC::wait() {
    80002120:	fe010113          	addi	sp,sp,-32
    80002124:	00113c23          	sd	ra,24(sp)
    80002128:	00813823          	sd	s0,16(sp)
    8000212c:	00913423          	sd	s1,8(sp)
    80002130:	02010413          	addi	s0,sp,32
    80002134:	00050493          	mv	s1,a0
    if(--val<0){
    80002138:	00452783          	lw	a5,4(a0)
    8000213c:	fff7879b          	addiw	a5,a5,-1
    80002140:	00f52223          	sw	a5,4(a0)
    80002144:	02079713          	slli	a4,a5,0x20
    80002148:	02074263          	bltz	a4,8000216c <_ZN4SemC4waitEv+0x4c>
    if(isClosing){
    8000214c:	0004c783          	lbu	a5,0(s1)
    80002150:	02079463          	bnez	a5,80002178 <_ZN4SemC4waitEv+0x58>
    return 0;
    80002154:	00000513          	li	a0,0
}
    80002158:	01813083          	ld	ra,24(sp)
    8000215c:	01013403          	ld	s0,16(sp)
    80002160:	00813483          	ld	s1,8(sp)
    80002164:	02010113          	addi	sp,sp,32
    80002168:	00008067          	ret
        block();
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	ef8080e7          	jalr	-264(ra) # 80002064 <_ZN4SemC5blockEv>
    80002174:	fd9ff06f          	j	8000214c <_ZN4SemC4waitEv+0x2c>
        return -1;
    80002178:	fff00513          	li	a0,-1
    8000217c:	fddff06f          	j	80002158 <_ZN4SemC4waitEv+0x38>

0000000080002180 <_ZN4SemC13unblockAwokenEP3TCB>:
void SemC::unblockAwoken(TCB *thr) {
    80002180:	fd010113          	addi	sp,sp,-48
    80002184:	02113423          	sd	ra,40(sp)
    80002188:	02813023          	sd	s0,32(sp)
    8000218c:	00913c23          	sd	s1,24(sp)
    80002190:	01213823          	sd	s2,16(sp)
    80002194:	01313423          	sd	s3,8(sp)
    80002198:	03010413          	addi	s0,sp,48
    8000219c:	00050993          	mv	s3,a0
    800021a0:	00058493          	mv	s1,a1
    Scheduler &s=Scheduler::getSchedulerInstance();
    800021a4:	00000097          	auipc	ra,0x0
    800021a8:	b44080e7          	jalr	-1212(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    800021ac:	00050913          	mv	s2,a0
    queue.removeAwoken(thr);
    800021b0:	00048593          	mv	a1,s1
    800021b4:	00898513          	addi	a0,s3,8
    800021b8:	00002097          	auipc	ra,0x2
    800021bc:	c50080e7          	jalr	-944(ra) # 80003e08 <_ZN12BlockedQueue12removeAwokenEP3TCB>
    s.put(thr);
    800021c0:	00048593          	mv	a1,s1
    800021c4:	00090513          	mv	a0,s2
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	b40080e7          	jalr	-1216(ra) # 80001d08 <_ZN9Scheduler3putEP3TCB>
}
    800021d0:	02813083          	ld	ra,40(sp)
    800021d4:	02013403          	ld	s0,32(sp)
    800021d8:	01813483          	ld	s1,24(sp)
    800021dc:	01013903          	ld	s2,16(sp)
    800021e0:	00813983          	ld	s3,8(sp)
    800021e4:	03010113          	addi	sp,sp,48
    800021e8:	00008067          	ret

00000000800021ec <_ZN4SemC12signalAwokenEP3TCB>:
int SemC::signalAwoken(TCB *thr) {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
    val++;
    800021fc:	00452703          	lw	a4,4(a0)
    80002200:	0017071b          	addiw	a4,a4,1
    80002204:	00e52223          	sw	a4,4(a0)
    unblockAwoken(thr);
    80002208:	00000097          	auipc	ra,0x0
    8000220c:	f78080e7          	jalr	-136(ra) # 80002180 <_ZN4SemC13unblockAwokenEP3TCB>
}
    80002210:	00000513          	li	a0,0
    80002214:	00813083          	ld	ra,8(sp)
    80002218:	00013403          	ld	s0,0(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN4SemC7unblockEv>:
void SemC::unblock() {
    80002224:	fd010113          	addi	sp,sp,-48
    80002228:	02113423          	sd	ra,40(sp)
    8000222c:	02813023          	sd	s0,32(sp)
    80002230:	00913c23          	sd	s1,24(sp)
    80002234:	01213823          	sd	s2,16(sp)
    80002238:	01313423          	sd	s3,8(sp)
    8000223c:	03010413          	addi	s0,sp,48
    80002240:	00050493          	mv	s1,a0
    Scheduler &s=Scheduler::getSchedulerInstance();
    80002244:	00000097          	auipc	ra,0x0
    80002248:	aa4080e7          	jalr	-1372(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    8000224c:	00050993          	mv	s3,a0
    TCB* t=queue.get();
    80002250:	00848513          	addi	a0,s1,8
    80002254:	00002097          	auipc	ra,0x2
    80002258:	b6c080e7          	jalr	-1172(ra) # 80003dc0 <_ZN12BlockedQueue3getEv>
    8000225c:	00050913          	mv	s2,a0
    if(t->getTimedWaitSem()==this){
    80002260:	00001097          	auipc	ra,0x1
    80002264:	ec0080e7          	jalr	-320(ra) # 80003120 <_ZNK3TCB15getTimedWaitSemEv>
    80002268:	02a48863          	beq	s1,a0,80002298 <_ZN4SemC7unblockEv+0x74>
    s.put(t);
    8000226c:	00090593          	mv	a1,s2
    80002270:	00098513          	mv	a0,s3
    80002274:	00000097          	auipc	ra,0x0
    80002278:	a94080e7          	jalr	-1388(ra) # 80001d08 <_ZN9Scheduler3putEP3TCB>
    8000227c:	02813083          	ld	ra,40(sp)
    80002280:	02013403          	ld	s0,32(sp)
    80002284:	01813483          	ld	s1,24(sp)
    80002288:	01013903          	ld	s2,16(sp)
    8000228c:	00813983          	ld	s3,8(sp)
    80002290:	03010113          	addi	sp,sp,48
    80002294:	00008067          	ret
        SleepQueue &sl=SleepQueue::getSleepQueueInstance();
    80002298:	00001097          	auipc	ra,0x1
    8000229c:	8ac080e7          	jalr	-1876(ra) # 80002b44 <_ZN10SleepQueue21getSleepQueueInstanceEv>
        sl.removeInterrupted(t);
    800022a0:	00090593          	mv	a1,s2
    800022a4:	00001097          	auipc	ra,0x1
    800022a8:	aa0080e7          	jalr	-1376(ra) # 80002d44 <_ZN10SleepQueue17removeInterruptedEP3TCB>
    800022ac:	fc1ff06f          	j	8000226c <_ZN4SemC7unblockEv+0x48>

00000000800022b0 <_ZN4SemC6signalEv>:
    if(++val<=0){
    800022b0:	00452783          	lw	a5,4(a0)
    800022b4:	0017879b          	addiw	a5,a5,1
    800022b8:	0007871b          	sext.w	a4,a5
    800022bc:	00f52223          	sw	a5,4(a0)
    800022c0:	00e05663          	blez	a4,800022cc <_ZN4SemC6signalEv+0x1c>
}
    800022c4:	00000513          	li	a0,0
    800022c8:	00008067          	ret
int SemC::signal() {
    800022cc:	ff010113          	addi	sp,sp,-16
    800022d0:	00113423          	sd	ra,8(sp)
    800022d4:	00813023          	sd	s0,0(sp)
    800022d8:	01010413          	addi	s0,sp,16
        unblock();
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	f48080e7          	jalr	-184(ra) # 80002224 <_ZN4SemC7unblockEv>
}
    800022e4:	00000513          	li	a0,0
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_ZN4SemC7closingEv>:
void SemC::closing() {
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	02010413          	addi	s0,sp,32
    8000230c:	00050493          	mv	s1,a0
    isClosing=true;
    80002310:	00100793          	li	a5,1
    80002314:	00f50023          	sb	a5,0(a0)
    while(queue.getNumOfBlocked()){
    80002318:	00848513          	addi	a0,s1,8
    8000231c:	00002097          	auipc	ra,0x2
    80002320:	b50080e7          	jalr	-1200(ra) # 80003e6c <_ZNK12BlockedQueue15getNumOfBlockedEv>
    80002324:	00050a63          	beqz	a0,80002338 <_ZN4SemC7closingEv+0x40>
        unblock();
    80002328:	00048513          	mv	a0,s1
    8000232c:	00000097          	auipc	ra,0x0
    80002330:	ef8080e7          	jalr	-264(ra) # 80002224 <_ZN4SemC7unblockEv>
    while(queue.getNumOfBlocked()){
    80002334:	fe5ff06f          	j	80002318 <_ZN4SemC7closingEv+0x20>
}
    80002338:	01813083          	ld	ra,24(sp)
    8000233c:	01013403          	ld	s0,16(sp)
    80002340:	00813483          	ld	s1,8(sp)
    80002344:	02010113          	addi	sp,sp,32
    80002348:	00008067          	ret

000000008000234c <_GLOBAL__sub_I__ZN4SemC3sidE>:
    8000234c:	ff010113          	addi	sp,sp,-16
    80002350:	00113423          	sd	ra,8(sp)
    80002354:	00813023          	sd	s0,0(sp)
    80002358:	01010413          	addi	s0,sp,16
    8000235c:	000105b7          	lui	a1,0x10
    80002360:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002364:	00100513          	li	a0,1
    80002368:	00000097          	auipc	ra,0x0
    8000236c:	a48080e7          	jalr	-1464(ra) # 80001db0 <_Z41__static_initialization_and_destruction_0ii>
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_Z15userMainWrapperPv>:
#include "../h/Riscv.hpp"
#include "../h/KernelConsole.hpp"
#include "../h/KernelThreads.hpp"
static sem_t mainSem;
extern "C" void contextHandler();
void userMainWrapper(void* arg){
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00113423          	sd	ra,8(sp)
    80002388:	00813023          	sd	s0,0(sp)
    8000238c:	01010413          	addi	s0,sp,16
    userMain();
    80002390:	fffff097          	auipc	ra,0xfffff
    80002394:	7b0080e7          	jalr	1968(ra) # 80001b40 <_Z8userMainv>
    mainSem->signal();
    80002398:	00015517          	auipc	a0,0x15
    8000239c:	5c853503          	ld	a0,1480(a0) # 80017960 <_ZL7mainSem>
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	f10080e7          	jalr	-240(ra) # 800022b0 <_ZN4SemC6signalEv>
}
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_Z22switchFromSModeToUModev>:
void switchFromSModeToUMode(){
    800023b8:	ff010113          	addi	sp,sp,-16
    800023bc:	00813423          	sd	s0,8(sp)
    800023c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800023c4:	10000793          	li	a5,256
    800023c8:	1007b073          	csrc	sstatus,a5
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    asm volatile("csrw sepc, ra");
    800023cc:	14109073          	csrw	sepc,ra
    asm volatile("sret");
    800023d0:	10200073          	sret
}
    800023d4:	00813403          	ld	s0,8(sp)
    800023d8:	01010113          	addi	sp,sp,16
    800023dc:	00008067          	ret

00000000800023e0 <main>:
void main(){
    800023e0:	fb010113          	addi	sp,sp,-80
    800023e4:	04113423          	sd	ra,72(sp)
    800023e8:	04813023          	sd	s0,64(sp)
    800023ec:	02913c23          	sd	s1,56(sp)
    800023f0:	05010413          	addi	s0,sp,80
    Riscv::w_stvec((uint64)Riscv::contextHandler);
    800023f4:	0000b797          	auipc	a5,0xb
    800023f8:	0e47b783          	ld	a5,228(a5) # 8000d4d8 <_GLOBAL_OFFSET_TABLE_+0x58>
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800023fc:	10579073          	csrw	stvec,a5
    thread_t outputKernelThread;
    thread_t inputKernelThread;
    thread_t userMainThread;
    thread_t mainThread;
    thread_create(&mainThread,nullptr,nullptr);
    80002400:	00000613          	li	a2,0
    80002404:	00000593          	li	a1,0
    80002408:	fc040513          	addi	a0,s0,-64
    8000240c:	fffff097          	auipc	ra,0xfffff
    80002410:	dd8080e7          	jalr	-552(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&userMainThread, userMainWrapper,nullptr);
    80002414:	00000613          	li	a2,0
    80002418:	00000597          	auipc	a1,0x0
    8000241c:	f6858593          	addi	a1,a1,-152 # 80002380 <_Z15userMainWrapperPv>
    80002420:	fc840513          	addi	a0,s0,-56
    80002424:	fffff097          	auipc	ra,0xfffff
    80002428:	dc0080e7          	jalr	-576(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    userMainThread->setMain();
    8000242c:	fc843503          	ld	a0,-56(s0)
    80002430:	00001097          	auipc	ra,0x1
    80002434:	b58080e7          	jalr	-1192(ra) # 80002f88 <_ZN3TCB7setMainEv>
    sem_open(&mainSem,0);
    80002438:	00015497          	auipc	s1,0x15
    8000243c:	52848493          	addi	s1,s1,1320 # 80017960 <_ZL7mainSem>
    80002440:	00000593          	li	a1,0
    80002444:	00048513          	mv	a0,s1
    80002448:	fffff097          	auipc	ra,0xfffff
    8000244c:	e88080e7          	jalr	-376(ra) # 800012d0 <_Z8sem_openPP4SemCj>
    thread_create(&outputKernelThread,KernelThreads::IOKernelThreadOut,nullptr);
    80002450:	00000613          	li	a2,0
    80002454:	0000b597          	auipc	a1,0xb
    80002458:	06c5b583          	ld	a1,108(a1) # 8000d4c0 <_GLOBAL_OFFSET_TABLE_+0x40>
    8000245c:	fd840513          	addi	a0,s0,-40
    80002460:	fffff097          	auipc	ra,0xfffff
    80002464:	d84080e7          	jalr	-636(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&inputKernelThread,KernelThreads::IOKernelThreadIn,nullptr);
    80002468:	00000613          	li	a2,0
    8000246c:	0000b597          	auipc	a1,0xb
    80002470:	05c5b583          	ld	a1,92(a1) # 8000d4c8 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002474:	fd040513          	addi	a0,s0,-48
    80002478:	fffff097          	auipc	ra,0xfffff
    8000247c:	d6c080e7          	jalr	-660(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    TCB::setRunning(mainThread);
    80002480:	fc043503          	ld	a0,-64(s0)
    80002484:	00001097          	auipc	ra,0x1
    80002488:	bfc080e7          	jalr	-1028(ra) # 80003080 <_ZN3TCB10setRunningEPS_>
    uint64 t=1<<9;
    asm volatile("csrs sie, %0"::"r"(t));
}
inline void Riscv::disable_external_interrupts(){
    uint64 t=1<<9;
    asm volatile("csrc sie, %0"::"r"(t));
    8000248c:	20000793          	li	a5,512
    80002490:	1047b073          	csrc	sie,a5
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80002494:	10000793          	li	a5,256
    80002498:	1007b073          	csrc	sstatus,a5
    Riscv::disable_external_interrupts();
    Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    Riscv::popSppSpie();
    8000249c:	00001097          	auipc	ra,0x1
    800024a0:	e48080e7          	jalr	-440(ra) # 800032e4 <_ZN5Riscv10popSppSpieEv>
    asm volatile("addi sp, sp, 16");
    800024a4:	01010113          	addi	sp,sp,16
    asm volatile("addi fp, fp, 80");
    800024a8:	05040413          	addi	s0,s0,80
    thread_t idleHandle;
    thread_create(&idleHandle, KernelThreads::idleF,nullptr);
    800024ac:	00000613          	li	a2,0
    800024b0:	0000b597          	auipc	a1,0xb
    800024b4:	0085b583          	ld	a1,8(a1) # 8000d4b8 <_GLOBAL_OFFSET_TABLE_+0x38>
    800024b8:	fb840513          	addi	a0,s0,-72
    800024bc:	fffff097          	auipc	ra,0xfffff
    800024c0:	d28080e7          	jalr	-728(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    mainSem->wait();
    800024c4:	0004b503          	ld	a0,0(s1)
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	c58080e7          	jalr	-936(ra) # 80002120 <_ZN4SemC4waitEv>
    KernelConsole::flush();
    800024d0:	00002097          	auipc	ra,0x2
    800024d4:	81c080e7          	jalr	-2020(ra) # 80003cec <_ZN13KernelConsole5flushEv>
    __asm__ volatile ("mv %0, a4" :"=r"(a4));
    return a4;
}
inline void Riscv::halt() {
    uint32* ptr=(uint32*)STOPADR;
    *ptr=STOP;
    800024d8:	00100737          	lui	a4,0x100
    800024dc:	000057b7          	lui	a5,0x5
    800024e0:	5557879b          	addiw	a5,a5,1365
    800024e4:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
    Riscv::halt();
}
    800024e8:	04813083          	ld	ra,72(sp)
    800024ec:	04013403          	ld	s0,64(sp)
    800024f0:	03813483          	ld	s1,56(sp)
    800024f4:	05010113          	addi	sp,sp,80
    800024f8:	00008067          	ret

00000000800024fc <_ZN13KernelThreads16IOKernelThreadInEPv>:
#include "../h/KernelThreads.hpp"
void KernelThreads::IOKernelThreadIn(void *a) {
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000250c:	00200793          	li	a5,2
    80002510:	1007a073          	csrs	sstatus,a5
    asm volatile("csrs sie, %0"::"r"(t));
    80002514:	20000793          	li	a5,512
    80002518:	1047a073          	csrs	sie,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    while(true){
        Riscv::enable_external_interrupts();
        thread_dispatch();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	d78080e7          	jalr	-648(ra) # 80001294 <_Z15thread_dispatchv>
    while(true){
    80002524:	ff1ff06f          	j	80002514 <_ZN13KernelThreads16IOKernelThreadInEPv+0x18>

0000000080002528 <_ZN13KernelThreads17IOKernelThreadOutEPv>:
    }
}

void KernelThreads::IOKernelThreadOut(void *a) {
    80002528:	fe010113          	addi	sp,sp,-32
    8000252c:	00113c23          	sd	ra,24(sp)
    80002530:	00813823          	sd	s0,16(sp)
    80002534:	00913423          	sd	s1,8(sp)
    80002538:	01213023          	sd	s2,0(sp)
    8000253c:	02010413          	addi	s0,sp,32
    while(true){
        KernelConsole& console=KernelConsole::getConsoleInstance();
    80002540:	00001097          	auipc	ra,0x1
    80002544:	644080e7          	jalr	1604(ra) # 80003b84 <_ZN13KernelConsole18getConsoleInstanceEv>
    80002548:	00050913          	mv	s2,a0
void KernelThreads::IOKernelThreadOut(void *a) {
    8000254c:	00000493          	li	s1,0
    80002550:	0200006f          	j	80002570 <_ZN13KernelThreads17IOKernelThreadOutEPv+0x48>
        while((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
            char c=console.getCharOut();
            if(c==13){
                c='\n';
            }
            *((char*)(CONSOLE_RX_DATA))=c;
    80002554:	0000b797          	auipc	a5,0xb
    80002558:	f347b783          	ld	a5,-204(a5) # 8000d488 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000255c:	0007b783          	ld	a5,0(a5)
    80002560:	00a78023          	sb	a0,0(a5)
            i++;
    80002564:	0014849b          	addiw	s1,s1,1
            if(i==32){
    80002568:	02000793          	li	a5,32
    8000256c:	02f48c63          	beq	s1,a5,800025a4 <_ZN13KernelThreads17IOKernelThreadOutEPv+0x7c>
        while((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
    80002570:	0000b797          	auipc	a5,0xb
    80002574:	f207b783          	ld	a5,-224(a5) # 8000d490 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002578:	0007b783          	ld	a5,0(a5)
    8000257c:	0007c783          	lbu	a5,0(a5)
    80002580:	0207f793          	andi	a5,a5,32
    80002584:	fa078ee3          	beqz	a5,80002540 <_ZN13KernelThreads17IOKernelThreadOutEPv+0x18>
            char c=console.getCharOut();
    80002588:	00090513          	mv	a0,s2
    8000258c:	00001097          	auipc	ra,0x1
    80002590:	6b4080e7          	jalr	1716(ra) # 80003c40 <_ZN13KernelConsole10getCharOutEv>
            if(c==13){
    80002594:	00d00793          	li	a5,13
    80002598:	faf51ee3          	bne	a0,a5,80002554 <_ZN13KernelThreads17IOKernelThreadOutEPv+0x2c>
                c='\n';
    8000259c:	00a00513          	li	a0,10
    800025a0:	fb5ff06f          	j	80002554 <_ZN13KernelThreads17IOKernelThreadOutEPv+0x2c>
                time_sleep(1);
    800025a4:	00100513          	li	a0,1
    800025a8:	fffff097          	auipc	ra,0xfffff
    800025ac:	eac080e7          	jalr	-340(ra) # 80001454 <_Z10time_sleepm>
                i=0;
    800025b0:	f9dff06f          	j	8000254c <_ZN13KernelThreads17IOKernelThreadOutEPv+0x24>

00000000800025b4 <_ZN13KernelThreads5idleFEPv>:
            }
        }
    }
}

void KernelThreads::idleF(void *a) {
    800025b4:	ff010113          	addi	sp,sp,-16
    800025b8:	00113423          	sd	ra,8(sp)
    800025bc:	00813023          	sd	s0,0(sp)
    800025c0:	01010413          	addi	s0,sp,16
    while(true){
        thread_dispatch();
    800025c4:	fffff097          	auipc	ra,0xfffff
    800025c8:	cd0080e7          	jalr	-816(ra) # 80001294 <_Z15thread_dispatchv>
    while(true){
    800025cc:	ff9ff06f          	j	800025c4 <_ZN13KernelThreads5idleFEPv+0x10>

00000000800025d0 <_ZZN6Thread5startEvEN10RunAdapter7adapterEPv>:
}

int Thread::start() {
    class RunAdapter{
    public:
        static void adapter(void* a){
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
            Thread* t=(Thread*)a;
            t->run();
    800025e0:	00053783          	ld	a5,0(a0)
    800025e4:	0107b783          	ld	a5,16(a5)
    800025e8:	000780e7          	jalr	a5
        }
    800025ec:	00813083          	ld	ra,8(sp)
    800025f0:	00013403          	ld	s0,0(sp)
    800025f4:	01010113          	addi	sp,sp,16
    800025f8:	00008067          	ret

00000000800025fc <_ZN6ThreadD1Ev>:
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}
Thread::~Thread(){
    800025fc:	fe010113          	addi	sp,sp,-32
    80002600:	00113c23          	sd	ra,24(sp)
    80002604:	00813823          	sd	s0,16(sp)
    80002608:	00913423          	sd	s1,8(sp)
    8000260c:	02010413          	addi	s0,sp,32
    80002610:	00050493          	mv	s1,a0
    80002614:	0000b797          	auipc	a5,0xb
    80002618:	c0478793          	addi	a5,a5,-1020 # 8000d218 <_ZTV6Thread+0x10>
    8000261c:	00f53023          	sd	a5,0(a0)
    thread_exit();
    80002620:	fffff097          	auipc	ra,0xfffff
    80002624:	c34080e7          	jalr	-972(ra) # 80001254 <_Z11thread_exitv>
    delete myHandle;
    80002628:	0084b503          	ld	a0,8(s1)
    8000262c:	00050663          	beqz	a0,80002638 <_ZN6ThreadD1Ev+0x3c>
    80002630:	00001097          	auipc	ra,0x1
    80002634:	97c080e7          	jalr	-1668(ra) # 80002fac <_ZN3TCBdlEPv>
}
    80002638:	01813083          	ld	ra,24(sp)
    8000263c:	01013403          	ld	s0,16(sp)
    80002640:	00813483          	ld	s1,8(sp)
    80002644:	02010113          	addi	sp,sp,32
    80002648:	00008067          	ret

000000008000264c <_ZN9SemaphoreD1Ev>:
Semaphore::Semaphore(unsigned int init) {
    sem_t handle;
    sem_open(&handle,init);
    myHandle=handle;
}
Semaphore::~Semaphore() {
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
    80002664:	0000b797          	auipc	a5,0xb
    80002668:	c0c78793          	addi	a5,a5,-1012 # 8000d270 <_ZTV9Semaphore+0x10>
    8000266c:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002670:	00853503          	ld	a0,8(a0)
    80002674:	fffff097          	auipc	ra,0xfffff
    80002678:	ca0080e7          	jalr	-864(ra) # 80001314 <_Z9sem_closeP4SemC>
    delete myHandle;
    8000267c:	0084b503          	ld	a0,8(s1)
    80002680:	00050663          	beqz	a0,8000268c <_ZN9SemaphoreD1Ev+0x40>
    80002684:	00000097          	auipc	ra,0x0
    80002688:	998080e7          	jalr	-1640(ra) # 8000201c <_ZN4SemCdlEPv>
}
    8000268c:	01813083          	ld	ra,24(sp)
    80002690:	01013403          	ld	s0,16(sp)
    80002694:	00813483          	ld	s1,8(sp)
    80002698:	02010113          	addi	sp,sp,32
    8000269c:	00008067          	ret

00000000800026a0 <_Znwm>:
void* operator new (size_t sz){
    800026a0:	ff010113          	addi	sp,sp,-16
    800026a4:	00113423          	sd	ra,8(sp)
    800026a8:	00813023          	sd	s0,0(sp)
    800026ac:	01010413          	addi	s0,sp,16
    return mem_alloc(sz);
    800026b0:	fffff097          	auipc	ra,0xfffff
    800026b4:	aa0080e7          	jalr	-1376(ra) # 80001150 <_Z9mem_allocm>
}
    800026b8:	00813083          	ld	ra,8(sp)
    800026bc:	00013403          	ld	s0,0(sp)
    800026c0:	01010113          	addi	sp,sp,16
    800026c4:	00008067          	ret

00000000800026c8 <_ZdlPv>:
void operator delete (void* adr){
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    mem_free(adr);
    800026d8:	fffff097          	auipc	ra,0xfffff
    800026dc:	acc080e7          	jalr	-1332(ra) # 800011a4 <_Z8mem_freePv>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN6ThreadD0Ev>:
Thread::~Thread(){
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
    80002704:	00050493          	mv	s1,a0
}
    80002708:	00000097          	auipc	ra,0x0
    8000270c:	ef4080e7          	jalr	-268(ra) # 800025fc <_ZN6ThreadD1Ev>
    80002710:	00048513          	mv	a0,s1
    80002714:	00000097          	auipc	ra,0x0
    80002718:	fb4080e7          	jalr	-76(ra) # 800026c8 <_ZdlPv>
    8000271c:	01813083          	ld	ra,24(sp)
    80002720:	01013403          	ld	s0,16(sp)
    80002724:	00813483          	ld	s1,8(sp)
    80002728:	02010113          	addi	sp,sp,32
    8000272c:	00008067          	ret

0000000080002730 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002730:	fe010113          	addi	sp,sp,-32
    80002734:	00113c23          	sd	ra,24(sp)
    80002738:	00813823          	sd	s0,16(sp)
    8000273c:	00913423          	sd	s1,8(sp)
    80002740:	02010413          	addi	s0,sp,32
    80002744:	00050493          	mv	s1,a0
}
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	f04080e7          	jalr	-252(ra) # 8000264c <_ZN9SemaphoreD1Ev>
    80002750:	00048513          	mv	a0,s1
    80002754:	00000097          	auipc	ra,0x0
    80002758:	f74080e7          	jalr	-140(ra) # 800026c8 <_ZdlPv>
    8000275c:	01813083          	ld	ra,24(sp)
    80002760:	01013403          	ld	s0,16(sp)
    80002764:	00813483          	ld	s1,8(sp)
    80002768:	02010113          	addi	sp,sp,32
    8000276c:	00008067          	ret

0000000080002770 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg):body(body),arg(arg){
    80002770:	fd010113          	addi	sp,sp,-48
    80002774:	02113423          	sd	ra,40(sp)
    80002778:	02813023          	sd	s0,32(sp)
    8000277c:	00913c23          	sd	s1,24(sp)
    80002780:	03010413          	addi	s0,sp,48
    80002784:	00050493          	mv	s1,a0
    80002788:	0000b797          	auipc	a5,0xb
    8000278c:	a9078793          	addi	a5,a5,-1392 # 8000d218 <_ZTV6Thread+0x10>
    80002790:	00f53023          	sd	a5,0(a0)
    80002794:	00b53823          	sd	a1,16(a0)
    80002798:	00c53c23          	sd	a2,24(a0)
    thread_create(&handle,body,arg);
    8000279c:	fd840513          	addi	a0,s0,-40
    800027a0:	fffff097          	auipc	ra,0xfffff
    800027a4:	a44080e7          	jalr	-1468(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    myHandle=handle;
    800027a8:	fd843783          	ld	a5,-40(s0)
    800027ac:	00f4b423          	sd	a5,8(s1)
}
    800027b0:	02813083          	ld	ra,40(sp)
    800027b4:	02013403          	ld	s0,32(sp)
    800027b8:	01813483          	ld	s1,24(sp)
    800027bc:	03010113          	addi	sp,sp,48
    800027c0:	00008067          	ret

00000000800027c4 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800027c4:	ff010113          	addi	sp,sp,-16
    800027c8:	00813423          	sd	s0,8(sp)
    800027cc:	01010413          	addi	s0,sp,16
    800027d0:	0000b797          	auipc	a5,0xb
    800027d4:	a4878793          	addi	a5,a5,-1464 # 8000d218 <_ZTV6Thread+0x10>
    800027d8:	00f53023          	sd	a5,0(a0)
}
    800027dc:	00813403          	ld	s0,8(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800027f8:	fffff097          	auipc	ra,0xfffff
    800027fc:	a9c080e7          	jalr	-1380(ra) # 80001294 <_Z15thread_dispatchv>
}
    80002800:	00813083          	ld	ra,8(sp)
    80002804:	00013403          	ld	s0,0(sp)
    80002808:	01010113          	addi	sp,sp,16
    8000280c:	00008067          	ret

0000000080002810 <_ZN6Thread5startEv>:
int Thread::start() {
    80002810:	fd010113          	addi	sp,sp,-48
    80002814:	02113423          	sd	ra,40(sp)
    80002818:	02813023          	sd	s0,32(sp)
    8000281c:	00913c23          	sd	s1,24(sp)
    80002820:	03010413          	addi	s0,sp,48
    80002824:	00050493          	mv	s1,a0
    body=RunAdapter::adapter;
    80002828:	00000597          	auipc	a1,0x0
    8000282c:	da858593          	addi	a1,a1,-600 # 800025d0 <_ZZN6Thread5startEvEN10RunAdapter7adapterEPv>
    80002830:	00b53823          	sd	a1,16(a0)
    arg=this;
    80002834:	00a53c23          	sd	a0,24(a0)
    int status=thread_create(&handle,body,arg);
    80002838:	00050613          	mv	a2,a0
    8000283c:	fd840513          	addi	a0,s0,-40
    80002840:	fffff097          	auipc	ra,0xfffff
    80002844:	9a4080e7          	jalr	-1628(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    myHandle=handle;
    80002848:	fd843783          	ld	a5,-40(s0)
    8000284c:	00f4b423          	sd	a5,8(s1)
}
    80002850:	02813083          	ld	ra,40(sp)
    80002854:	02013403          	ld	s0,32(sp)
    80002858:	01813483          	ld	s1,24(sp)
    8000285c:	03010113          	addi	sp,sp,48
    80002860:	00008067          	ret

0000000080002864 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t t) {
    80002864:	ff010113          	addi	sp,sp,-16
    80002868:	00113423          	sd	ra,8(sp)
    8000286c:	00813023          	sd	s0,0(sp)
    80002870:	01010413          	addi	s0,sp,16
    return time_sleep(t);
    80002874:	fffff097          	auipc	ra,0xfffff
    80002878:	be0080e7          	jalr	-1056(ra) # 80001454 <_Z10time_sleepm>
}
    8000287c:	00813083          	ld	ra,8(sp)
    80002880:	00013403          	ld	s0,0(sp)
    80002884:	01010113          	addi	sp,sp,16
    80002888:	00008067          	ret

000000008000288c <_ZN14PeriodicThread3runEv>:
void PeriodicThread::run() {
    8000288c:	fe010113          	addi	sp,sp,-32
    80002890:	00113c23          	sd	ra,24(sp)
    80002894:	00813823          	sd	s0,16(sp)
    80002898:	00913423          	sd	s1,8(sp)
    8000289c:	02010413          	addi	s0,sp,32
    800028a0:	00050493          	mv	s1,a0
    while(period){
    800028a4:	0204b503          	ld	a0,32(s1)
    800028a8:	02050063          	beqz	a0,800028c8 <_ZN14PeriodicThread3runEv+0x3c>
        sleep(period);
    800028ac:	00000097          	auipc	ra,0x0
    800028b0:	fb8080e7          	jalr	-72(ra) # 80002864 <_ZN6Thread5sleepEm>
        periodicActivation();
    800028b4:	0004b783          	ld	a5,0(s1)
    800028b8:	0187b783          	ld	a5,24(a5)
    800028bc:	00048513          	mv	a0,s1
    800028c0:	000780e7          	jalr	a5
    while(period){
    800028c4:	fe1ff06f          	j	800028a4 <_ZN14PeriodicThread3runEv+0x18>
}
    800028c8:	01813083          	ld	ra,24(sp)
    800028cc:	01013403          	ld	s0,16(sp)
    800028d0:	00813483          	ld	s1,8(sp)
    800028d4:	02010113          	addi	sp,sp,32
    800028d8:	00008067          	ret

00000000800028dc <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period):period(period) {
    800028dc:	fe010113          	addi	sp,sp,-32
    800028e0:	00113c23          	sd	ra,24(sp)
    800028e4:	00813823          	sd	s0,16(sp)
    800028e8:	00913423          	sd	s1,8(sp)
    800028ec:	01213023          	sd	s2,0(sp)
    800028f0:	02010413          	addi	s0,sp,32
    800028f4:	00050493          	mv	s1,a0
    800028f8:	00058913          	mv	s2,a1
    800028fc:	00000097          	auipc	ra,0x0
    80002900:	ec8080e7          	jalr	-312(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80002904:	0000b797          	auipc	a5,0xb
    80002908:	93c78793          	addi	a5,a5,-1732 # 8000d240 <_ZTV14PeriodicThread+0x10>
    8000290c:	00f4b023          	sd	a5,0(s1)
    80002910:	0324b023          	sd	s2,32(s1)
}
    80002914:	01813083          	ld	ra,24(sp)
    80002918:	01013403          	ld	s0,16(sp)
    8000291c:	00813483          	ld	s1,8(sp)
    80002920:	00013903          	ld	s2,0(sp)
    80002924:	02010113          	addi	sp,sp,32
    80002928:	00008067          	ret

000000008000292c <_ZN14PeriodicThread9terminateEv>:
void PeriodicThread::terminate() {
    8000292c:	ff010113          	addi	sp,sp,-16
    80002930:	00813423          	sd	s0,8(sp)
    80002934:	01010413          	addi	s0,sp,16
    period=0;
    80002938:	02053023          	sd	zero,32(a0)
}
    8000293c:	00813403          	ld	s0,8(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret

0000000080002948 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002948:	fd010113          	addi	sp,sp,-48
    8000294c:	02113423          	sd	ra,40(sp)
    80002950:	02813023          	sd	s0,32(sp)
    80002954:	00913c23          	sd	s1,24(sp)
    80002958:	03010413          	addi	s0,sp,48
    8000295c:	00050493          	mv	s1,a0
    80002960:	0000b797          	auipc	a5,0xb
    80002964:	91078793          	addi	a5,a5,-1776 # 8000d270 <_ZTV9Semaphore+0x10>
    80002968:	00f53023          	sd	a5,0(a0)
    sem_open(&handle,init);
    8000296c:	fd840513          	addi	a0,s0,-40
    80002970:	fffff097          	auipc	ra,0xfffff
    80002974:	960080e7          	jalr	-1696(ra) # 800012d0 <_Z8sem_openPP4SemCj>
    myHandle=handle;
    80002978:	fd843783          	ld	a5,-40(s0)
    8000297c:	00f4b423          	sd	a5,8(s1)
}
    80002980:	02813083          	ld	ra,40(sp)
    80002984:	02013403          	ld	s0,32(sp)
    80002988:	01813483          	ld	s1,24(sp)
    8000298c:	03010113          	addi	sp,sp,48
    80002990:	00008067          	ret

0000000080002994 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002994:	ff010113          	addi	sp,sp,-16
    80002998:	00113423          	sd	ra,8(sp)
    8000299c:	00813023          	sd	s0,0(sp)
    800029a0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800029a4:	00853503          	ld	a0,8(a0)
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	9ac080e7          	jalr	-1620(ra) # 80001354 <_Z8sem_waitP4SemC>
}
    800029b0:	00813083          	ld	ra,8(sp)
    800029b4:	00013403          	ld	s0,0(sp)
    800029b8:	01010113          	addi	sp,sp,16
    800029bc:	00008067          	ret

00000000800029c0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800029c0:	ff010113          	addi	sp,sp,-16
    800029c4:	00113423          	sd	ra,8(sp)
    800029c8:	00813023          	sd	s0,0(sp)
    800029cc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800029d0:	00853503          	ld	a0,8(a0)
    800029d4:	fffff097          	auipc	ra,0xfffff
    800029d8:	9c0080e7          	jalr	-1600(ra) # 80001394 <_Z10sem_signalP4SemC>
}
    800029dc:	00813083          	ld	ra,8(sp)
    800029e0:	00013403          	ld	s0,0(sp)
    800029e4:	01010113          	addi	sp,sp,16
    800029e8:	00008067          	ret

00000000800029ec <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    800029ec:	ff010113          	addi	sp,sp,-16
    800029f0:	00113423          	sd	ra,8(sp)
    800029f4:	00813023          	sd	s0,0(sp)
    800029f8:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    800029fc:	00853503          	ld	a0,8(a0)
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	a14080e7          	jalr	-1516(ra) # 80001414 <_Z11sem_trywaitP4SemC>
}
    80002a08:	00813083          	ld	ra,8(sp)
    80002a0c:	00013403          	ld	s0,0(sp)
    80002a10:	01010113          	addi	sp,sp,16
    80002a14:	00008067          	ret

0000000080002a18 <_ZN9Semaphore9timedWaitEm>:

int Semaphore::timedWait(time_t limit) {
    80002a18:	ff010113          	addi	sp,sp,-16
    80002a1c:	00113423          	sd	ra,8(sp)
    80002a20:	00813023          	sd	s0,0(sp)
    80002a24:	01010413          	addi	s0,sp,16
    return sem_timedwait(myHandle,limit);
    80002a28:	00853503          	ld	a0,8(a0)
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	9a8080e7          	jalr	-1624(ra) # 800013d4 <_Z13sem_timedwaitP4SemCm>
}
    80002a34:	00813083          	ld	ra,8(sp)
    80002a38:	00013403          	ld	s0,0(sp)
    80002a3c:	01010113          	addi	sp,sp,16
    80002a40:	00008067          	ret

0000000080002a44 <_ZN7Console4getcEv>:
char Console::getc() {
    80002a44:	ff010113          	addi	sp,sp,-16
    80002a48:	00113423          	sd	ra,8(sp)
    80002a4c:	00813023          	sd	s0,0(sp)
    80002a50:	01010413          	addi	s0,sp,16
    return ::getc();
    80002a54:	fffff097          	auipc	ra,0xfffff
    80002a58:	a40080e7          	jalr	-1472(ra) # 80001494 <_Z4getcv>
}
    80002a5c:	00813083          	ld	ra,8(sp)
    80002a60:	00013403          	ld	s0,0(sp)
    80002a64:	01010113          	addi	sp,sp,16
    80002a68:	00008067          	ret

0000000080002a6c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002a6c:	ff010113          	addi	sp,sp,-16
    80002a70:	00113423          	sd	ra,8(sp)
    80002a74:	00813023          	sd	s0,0(sp)
    80002a78:	01010413          	addi	s0,sp,16
    ::putc(c);
    80002a7c:	fffff097          	auipc	ra,0xfffff
    80002a80:	a58080e7          	jalr	-1448(ra) # 800014d4 <_Z4putcc>
    80002a84:	00813083          	ld	ra,8(sp)
    80002a88:	00013403          	ld	s0,0(sp)
    80002a8c:	01010113          	addi	sp,sp,16
    80002a90:	00008067          	ret

0000000080002a94 <_ZN6Thread3runEv>:
    int start ();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00813423          	sd	s0,8(sp)
    80002a9c:	01010413          	addi	s0,sp,16
    80002aa0:	00813403          	ld	s0,8(sp)
    80002aa4:	01010113          	addi	sp,sp,16
    80002aa8:	00008067          	ret

0000000080002aac <_ZN14PeriodicThread18periodicActivationEv>:
class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80002aac:	ff010113          	addi	sp,sp,-16
    80002ab0:	00813423          	sd	s0,8(sp)
    80002ab4:	01010413          	addi	s0,sp,16
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80002ac4:	ff010113          	addi	sp,sp,-16
    80002ac8:	00113423          	sd	ra,8(sp)
    80002acc:	00813023          	sd	s0,0(sp)
    80002ad0:	01010413          	addi	s0,sp,16
    80002ad4:	0000a797          	auipc	a5,0xa
    80002ad8:	76c78793          	addi	a5,a5,1900 # 8000d240 <_ZTV14PeriodicThread+0x10>
    80002adc:	00f53023          	sd	a5,0(a0)
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	b1c080e7          	jalr	-1252(ra) # 800025fc <_ZN6ThreadD1Ev>
    80002ae8:	00813083          	ld	ra,8(sp)
    80002aec:	00013403          	ld	s0,0(sp)
    80002af0:	01010113          	addi	sp,sp,16
    80002af4:	00008067          	ret

0000000080002af8 <_ZN14PeriodicThreadD0Ev>:
    80002af8:	fe010113          	addi	sp,sp,-32
    80002afc:	00113c23          	sd	ra,24(sp)
    80002b00:	00813823          	sd	s0,16(sp)
    80002b04:	00913423          	sd	s1,8(sp)
    80002b08:	02010413          	addi	s0,sp,32
    80002b0c:	00050493          	mv	s1,a0
    80002b10:	0000a797          	auipc	a5,0xa
    80002b14:	73078793          	addi	a5,a5,1840 # 8000d240 <_ZTV14PeriodicThread+0x10>
    80002b18:	00f53023          	sd	a5,0(a0)
    80002b1c:	00000097          	auipc	ra,0x0
    80002b20:	ae0080e7          	jalr	-1312(ra) # 800025fc <_ZN6ThreadD1Ev>
    80002b24:	00048513          	mv	a0,s1
    80002b28:	00000097          	auipc	ra,0x0
    80002b2c:	ba0080e7          	jalr	-1120(ra) # 800026c8 <_ZdlPv>
    80002b30:	01813083          	ld	ra,24(sp)
    80002b34:	01013403          	ld	s0,16(sp)
    80002b38:	00813483          	ld	s1,8(sp)
    80002b3c:	02010113          	addi	sp,sp,32
    80002b40:	00008067          	ret

0000000080002b44 <_ZN10SleepQueue21getSleepQueueInstanceEv>:
#include "../h/SleepQueue.hpp"
#include "../h/SemC.hpp"
SleepQueue &SleepQueue::getSleepQueueInstance() {
    80002b44:	ff010113          	addi	sp,sp,-16
    80002b48:	00813423          	sd	s0,8(sp)
    80002b4c:	01010413          	addi	s0,sp,16
    static SleepQueue instance;
    return instance;
}
    80002b50:	00015517          	auipc	a0,0x15
    80002b54:	e1850513          	addi	a0,a0,-488 # 80017968 <_ZZN10SleepQueue21getSleepQueueInstanceEvE8instance>
    80002b58:	00813403          	ld	s0,8(sp)
    80002b5c:	01010113          	addi	sp,sp,16
    80002b60:	00008067          	ret

0000000080002b64 <_ZN10SleepQueue19removeFromSchedulerEP3TCB>:
    }
    thr->sleptTime=ticks;
    removeFromScheduler(thr);
}

void SleepQueue::removeFromScheduler(TCB *thr) {
    80002b64:	fe010113          	addi	sp,sp,-32
    80002b68:	00113c23          	sd	ra,24(sp)
    80002b6c:	00813823          	sd	s0,16(sp)
    80002b70:	00913423          	sd	s1,8(sp)
    80002b74:	01213023          	sd	s2,0(sp)
    80002b78:	02010413          	addi	s0,sp,32
    80002b7c:	00050493          	mv	s1,a0
    Scheduler &s=Scheduler::getSchedulerInstance();
    80002b80:	fffff097          	auipc	ra,0xfffff
    80002b84:	168080e7          	jalr	360(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    TCB* newThread=s.get();
    80002b88:	fffff097          	auipc	ra,0xfffff
    80002b8c:	1d0080e7          	jalr	464(ra) # 80001d58 <_ZN9Scheduler3getEv>
    80002b90:	00050913          	mv	s2,a0
    TCB::setRunning(newThread);
    80002b94:	00000097          	auipc	ra,0x0
    80002b98:	4ec080e7          	jalr	1260(ra) # 80003080 <_ZN3TCB10setRunningEPS_>
    TCB::yield(thr,newThread);
    80002b9c:	00090593          	mv	a1,s2
    80002ba0:	00048513          	mv	a0,s1
    80002ba4:	00000097          	auipc	ra,0x0
    80002ba8:	610080e7          	jalr	1552(ra) # 800031b4 <_ZN3TCB5yieldEPS_S0_>
}
    80002bac:	01813083          	ld	ra,24(sp)
    80002bb0:	01013403          	ld	s0,16(sp)
    80002bb4:	00813483          	ld	s1,8(sp)
    80002bb8:	00013903          	ld	s2,0(sp)
    80002bbc:	02010113          	addi	sp,sp,32
    80002bc0:	00008067          	ret

0000000080002bc4 <_ZN10SleepQueue3putEP3TCBm>:
void SleepQueue::put(TCB *thr, time_t ticks) {
    80002bc4:	ff010113          	addi	sp,sp,-16
    80002bc8:	00113423          	sd	ra,8(sp)
    80002bcc:	00813023          	sd	s0,0(sp)
    80002bd0:	01010413          	addi	s0,sp,16
    80002bd4:	00050813          	mv	a6,a0
    80002bd8:	00058513          	mv	a0,a1
    if(!head){
    80002bdc:	00083583          	ld	a1,0(a6)
    80002be0:	00058863          	beqz	a1,80002bf0 <_ZN10SleepQueue3putEP3TCBm+0x2c>
        TCB *cur = head, *prev = nullptr;
    80002be4:	00058793          	mv	a5,a1
    80002be8:	00000693          	li	a3,0
    80002bec:	0180006f          	j	80002c04 <_ZN10SleepQueue3putEP3TCBm+0x40>
        head=thr;
    80002bf0:	00a83023          	sd	a0,0(a6)
    80002bf4:	04c0006f          	j	80002c40 <_ZN10SleepQueue3putEP3TCBm+0x7c>
            ticks -= cur->sleptTime;
    80002bf8:	40e60633          	sub	a2,a2,a4
            prev = cur;
    80002bfc:	00078693          	mv	a3,a5
            cur = cur->nextSlept;
    80002c00:	0707b783          	ld	a5,112(a5)
        while (cur) {
    80002c04:	00078663          	beqz	a5,80002c10 <_ZN10SleepQueue3putEP3TCBm+0x4c>
            if (ticks <= cur->sleptTime) break;
    80002c08:	0787b703          	ld	a4,120(a5)
    80002c0c:	fec766e3          	bltu	a4,a2,80002bf8 <_ZN10SleepQueue3putEP3TCBm+0x34>
        if(!prev){
    80002c10:	04068663          	beqz	a3,80002c5c <_ZN10SleepQueue3putEP3TCBm+0x98>
            thr->nextSlept=prev->nextSlept;
    80002c14:	0706b783          	ld	a5,112(a3) # a070 <_entry-0x7fff5f90>
    80002c18:	06f53823          	sd	a5,112(a0)
            prev->nextSlept=thr;
    80002c1c:	06a6b823          	sd	a0,112(a3)
            thr->prevSlept=prev;
    80002c20:	06d53423          	sd	a3,104(a0)
        if(thr->nextSlept){
    80002c24:	07053783          	ld	a5,112(a0)
    80002c28:	00078c63          	beqz	a5,80002c40 <_ZN10SleepQueue3putEP3TCBm+0x7c>
            thr->nextSlept->prevSlept=thr;
    80002c2c:	06a7b423          	sd	a0,104(a5)
            thr->nextSlept->sleptTime-=ticks;
    80002c30:	07053703          	ld	a4,112(a0)
    80002c34:	07873783          	ld	a5,120(a4)
    80002c38:	40c787b3          	sub	a5,a5,a2
    80002c3c:	06f73c23          	sd	a5,120(a4)
    thr->sleptTime=ticks;
    80002c40:	06c53c23          	sd	a2,120(a0)
    removeFromScheduler(thr);
    80002c44:	00000097          	auipc	ra,0x0
    80002c48:	f20080e7          	jalr	-224(ra) # 80002b64 <_ZN10SleepQueue19removeFromSchedulerEP3TCB>
}
    80002c4c:	00813083          	ld	ra,8(sp)
    80002c50:	00013403          	ld	s0,0(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret
            thr->nextSlept=head;
    80002c5c:	06b53823          	sd	a1,112(a0)
            thr->prevSlept= nullptr;
    80002c60:	06053423          	sd	zero,104(a0)
            head=thr;
    80002c64:	00a83023          	sd	a0,0(a6)
    80002c68:	fbdff06f          	j	80002c24 <_ZN10SleepQueue3putEP3TCBm+0x60>

0000000080002c6c <_ZN10SleepQueue17returnToSchedulerEP3TCB>:

void SleepQueue::returnToScheduler(TCB *thr) {
    80002c6c:	fe010113          	addi	sp,sp,-32
    80002c70:	00113c23          	sd	ra,24(sp)
    80002c74:	00813823          	sd	s0,16(sp)
    80002c78:	00913423          	sd	s1,8(sp)
    80002c7c:	02010413          	addi	s0,sp,32
    80002c80:	00050493          	mv	s1,a0
    Scheduler &s=Scheduler::getSchedulerInstance();
    80002c84:	fffff097          	auipc	ra,0xfffff
    80002c88:	064080e7          	jalr	100(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    s.put(thr);
    80002c8c:	00048593          	mv	a1,s1
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	078080e7          	jalr	120(ra) # 80001d08 <_ZN9Scheduler3putEP3TCB>
}
    80002c98:	01813083          	ld	ra,24(sp)
    80002c9c:	01013403          	ld	s0,16(sp)
    80002ca0:	00813483          	ld	s1,8(sp)
    80002ca4:	02010113          	addi	sp,sp,32
    80002ca8:	00008067          	ret

0000000080002cac <_ZN10SleepQueue10updateTickEv>:

void SleepQueue::updateTick() {
    if(head){
    80002cac:	00053783          	ld	a5,0(a0)
    80002cb0:	08078863          	beqz	a5,80002d40 <_ZN10SleepQueue10updateTickEv+0x94>
void SleepQueue::updateTick() {
    80002cb4:	fe010113          	addi	sp,sp,-32
    80002cb8:	00113c23          	sd	ra,24(sp)
    80002cbc:	00813823          	sd	s0,16(sp)
    80002cc0:	00913423          	sd	s1,8(sp)
    80002cc4:	02010413          	addi	s0,sp,32
    80002cc8:	00050493          	mv	s1,a0
        head->sleptTime--;
    80002ccc:	0787b703          	ld	a4,120(a5)
    80002cd0:	fff70713          	addi	a4,a4,-1
    80002cd4:	06e7bc23          	sd	a4,120(a5)
    80002cd8:	0100006f          	j	80002ce8 <_ZN10SleepQueue10updateTickEv+0x3c>
            if(temp->timedWaitSem){
                temp->interruptedWhileWaiting=true;
                temp->timedWaitSem->signalAwoken(temp);
            }
            else{
                returnToScheduler(temp);
    80002cdc:	00058513          	mv	a0,a1
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	f8c080e7          	jalr	-116(ra) # 80002c6c <_ZN10SleepQueue17returnToSchedulerEP3TCB>
        while(head&&head->sleptTime==0){
    80002ce8:	0004b583          	ld	a1,0(s1)
    80002cec:	04058063          	beqz	a1,80002d2c <_ZN10SleepQueue10updateTickEv+0x80>
    80002cf0:	0785b783          	ld	a5,120(a1)
    80002cf4:	02079c63          	bnez	a5,80002d2c <_ZN10SleepQueue10updateTickEv+0x80>
            head=head->nextSlept;
    80002cf8:	0705b783          	ld	a5,112(a1)
    80002cfc:	00f4b023          	sd	a5,0(s1)
            if(head){
    80002d00:	00078463          	beqz	a5,80002d08 <_ZN10SleepQueue10updateTickEv+0x5c>
                head->prevSlept=nullptr;
    80002d04:	0607b423          	sd	zero,104(a5)
            temp->prevSlept=temp->nextSlept= nullptr;
    80002d08:	0605b823          	sd	zero,112(a1)
    80002d0c:	0605b423          	sd	zero,104(a1)
            if(temp->timedWaitSem){
    80002d10:	0005b503          	ld	a0,0(a1)
    80002d14:	fc0504e3          	beqz	a0,80002cdc <_ZN10SleepQueue10updateTickEv+0x30>
                temp->interruptedWhileWaiting=true;
    80002d18:	00100793          	li	a5,1
    80002d1c:	00f584a3          	sb	a5,9(a1)
                temp->timedWaitSem->signalAwoken(temp);
    80002d20:	fffff097          	auipc	ra,0xfffff
    80002d24:	4cc080e7          	jalr	1228(ra) # 800021ec <_ZN4SemC12signalAwokenEP3TCB>
    80002d28:	fc1ff06f          	j	80002ce8 <_ZN10SleepQueue10updateTickEv+0x3c>
            }
        }
    }
}
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	00813483          	ld	s1,8(sp)
    80002d38:	02010113          	addi	sp,sp,32
    80002d3c:	00008067          	ret
    80002d40:	00008067          	ret

0000000080002d44 <_ZN10SleepQueue17removeInterruptedEP3TCB>:

void SleepQueue::removeInterrupted(TCB *thr) {
    80002d44:	ff010113          	addi	sp,sp,-16
    80002d48:	00813423          	sd	s0,8(sp)
    80002d4c:	01010413          	addi	s0,sp,16
    if(thr->prevSlept) {
    80002d50:	0685b783          	ld	a5,104(a1)
    80002d54:	04078263          	beqz	a5,80002d98 <_ZN10SleepQueue17removeInterruptedEP3TCB+0x54>
        thr->prevSlept->nextSlept = thr->nextSlept;
    80002d58:	0705b703          	ld	a4,112(a1)
    80002d5c:	06e7b823          	sd	a4,112(a5)
    }
    else{
        head=thr->nextSlept;
    }
    if(thr->nextSlept){
    80002d60:	0705b783          	ld	a5,112(a1)
    80002d64:	02078063          	beqz	a5,80002d84 <_ZN10SleepQueue17removeInterruptedEP3TCB+0x40>
        thr->nextSlept->prevSlept=thr->prevSlept;
    80002d68:	0685b703          	ld	a4,104(a1)
    80002d6c:	06e7b423          	sd	a4,104(a5)
        thr->nextSlept->sleptTime+=thr->sleptTime;
    80002d70:	0705b703          	ld	a4,112(a1)
    80002d74:	0785b683          	ld	a3,120(a1)
    80002d78:	07873783          	ld	a5,120(a4)
    80002d7c:	00d787b3          	add	a5,a5,a3
    80002d80:	06f73c23          	sd	a5,120(a4)
    }
    thr->prevSlept=thr->nextSlept=nullptr;
    80002d84:	0605b823          	sd	zero,112(a1)
    80002d88:	0605b423          	sd	zero,104(a1)
    80002d8c:	00813403          	ld	s0,8(sp)
    80002d90:	01010113          	addi	sp,sp,16
    80002d94:	00008067          	ret
        head=thr->nextSlept;
    80002d98:	0705b783          	ld	a5,112(a1)
    80002d9c:	00f53023          	sd	a5,0(a0)
    80002da0:	fc1ff06f          	j	80002d60 <_ZN10SleepQueue17removeInterruptedEP3TCB+0x1c>

0000000080002da4 <_Z41__static_initialization_and_destruction_0ii>:
        asm volatile("mv %0, sp":"=r"(oldThread->savedUSP));
        asm volatile("mv %0, ra":"=r"(oldThread->savedJmp));
    }
    asm volatile("mv sp, %0"::"r"(newThread->savedUSP));
    asm volatile("mv ra, %0"::"r"(newThread->savedJmp));
}
    80002da4:	ff010113          	addi	sp,sp,-16
    80002da8:	00813423          	sd	s0,8(sp)
    80002dac:	01010413          	addi	s0,sp,16
    80002db0:	00100793          	li	a5,1
    80002db4:	00f50863          	beq	a0,a5,80002dc4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002db8:	00813403          	ld	s0,8(sp)
    80002dbc:	01010113          	addi	sp,sp,16
    80002dc0:	00008067          	ret
    80002dc4:	000107b7          	lui	a5,0x10
    80002dc8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002dcc:	fef596e3          	bne	a1,a5,80002db8 <_Z41__static_initialization_and_destruction_0ii+0x14>
#define PROJECT_BASE_V1_1_2_KERNELRESOURCEMANAGER_HPP
#include "../lib/hw.h"
#include "MemoryAllocator.hpp"
template<typename T> class KernelResourceManager{
public:
    KernelResourceManager(){
    80002dd0:	00037797          	auipc	a5,0x37
    80002dd4:	ba07ac23          	sw	zero,-1096(a5) # 80039988 <_ZN3TCB15threadAllocatorE+0x22000>
        for(int i=0;i<DEFAULT_SIZE;i++){
    80002dd8:	00000793          	li	a5,0
    80002ddc:	3ff00713          	li	a4,1023
    80002de0:	fcf74ce3          	blt	a4,a5,80002db8 <_Z41__static_initialization_and_destruction_0ii+0x14>
            occupied[i]=false;
    80002de4:	00015717          	auipc	a4,0x15
    80002de8:	ba470713          	addi	a4,a4,-1116 # 80017988 <_ZN3TCB15threadAllocatorE>
    80002dec:	00f706b3          	add	a3,a4,a5
    80002df0:	00022737          	lui	a4,0x22
    80002df4:	00d70733          	add	a4,a4,a3
    80002df8:	00070223          	sb	zero,4(a4) # 22004 <_entry-0x7ffddffc>
        for(int i=0;i<DEFAULT_SIZE;i++){
    80002dfc:	0017879b          	addiw	a5,a5,1
    80002e00:	fddff06f          	j	80002ddc <_Z41__static_initialization_and_destruction_0ii+0x38>

0000000080002e04 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper() {
    80002e04:	ff010113          	addi	sp,sp,-16
    80002e08:	00113423          	sd	ra,8(sp)
    80002e0c:	00813023          	sd	s0,0(sp)
    80002e10:	01010413          	addi	s0,sp,16
    asm volatile("mv a0, %0"::"r"(x));
    80002e14:	00000793          	li	a5,0
    80002e18:	00078513          	mv	a0,a5
    asm volatile("ecall");
    80002e1c:	00000073          	ecall
    (*(running->threadBody))(running->arg);
    80002e20:	00015797          	auipc	a5,0x15
    80002e24:	b507b783          	ld	a5,-1200(a5) # 80017970 <_ZN3TCB7runningE>
    80002e28:	0187b703          	ld	a4,24(a5)
    80002e2c:	0207b503          	ld	a0,32(a5)
    80002e30:	000700e7          	jalr	a4
    thread_exit();
    80002e34:	ffffe097          	auipc	ra,0xffffe
    80002e38:	420080e7          	jalr	1056(ra) # 80001254 <_Z11thread_exitv>
    thread_dispatch();
    80002e3c:	ffffe097          	auipc	ra,0xffffe
    80002e40:	458080e7          	jalr	1112(ra) # 80001294 <_Z15thread_dispatchv>
}
    80002e44:	00813083          	ld	ra,8(sp)
    80002e48:	00013403          	ld	s0,0(sp)
    80002e4c:	01010113          	addi	sp,sp,16
    80002e50:	00008067          	ret

0000000080002e54 <_ZN3TCBC1EPFvPvES0_Pm>:
TCB::TCB(void (*fptr)(void *), void *a,uint64* sp):threadBody(fptr),arg(a),userStack(sp),savedUSP((uint64)sp+DEFAULT_STACK_SIZE-1){
    80002e54:	fd010113          	addi	sp,sp,-48
    80002e58:	02113423          	sd	ra,40(sp)
    80002e5c:	02813023          	sd	s0,32(sp)
    80002e60:	00913c23          	sd	s1,24(sp)
    80002e64:	03010413          	addi	s0,sp,48
    80002e68:	00050493          	mv	s1,a0
    80002e6c:	00053023          	sd	zero,0(a0)
    80002e70:	00050423          	sb	zero,8(a0)
    80002e74:	000504a3          	sb	zero,9(a0)
    80002e78:	00200793          	li	a5,2
    80002e7c:	00f53823          	sd	a5,16(a0)
    80002e80:	00b53c23          	sd	a1,24(a0)
    80002e84:	02c53023          	sd	a2,32(a0)
    80002e88:	02d53423          	sd	a3,40(a0)
    80002e8c:	000027b7          	lui	a5,0x2
    80002e90:	fff78793          	addi	a5,a5,-1 # 1fff <_entry-0x7fffe001>
    80002e94:	00f686b3          	add	a3,a3,a5
    80002e98:	02d53c23          	sd	a3,56(a0)
    80002e9c:	08050023          	sb	zero,128(a0)
    resourceId=sid;
    80002ea0:	00015797          	auipc	a5,0x15
    80002ea4:	ad87a783          	lw	a5,-1320(a5) # 80017978 <_ZN3TCB3sidE>
    80002ea8:	04f52423          	sw	a5,72(a0)
        savedJmp=reinterpret_cast<uint64>(wrapperPtr);
    80002eac:	00000797          	auipc	a5,0x0
    80002eb0:	f5878793          	addi	a5,a5,-168 # 80002e04 <_ZN3TCB13threadWrapperEv>
    80002eb4:	04f53023          	sd	a5,64(a0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002eb8:	100027f3          	csrr	a5,sstatus
    80002ebc:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    80002ec0:	fd843783          	ld	a5,-40(s0)
    savedSStatus=Riscv::r_sstatus();
    80002ec4:	02f53823          	sd	a5,48(a0)
    Scheduler &s=Scheduler::getSchedulerInstance();
    80002ec8:	fffff097          	auipc	ra,0xfffff
    80002ecc:	e20080e7          	jalr	-480(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    s.put(this);
    80002ed0:	00048593          	mv	a1,s1
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	e34080e7          	jalr	-460(ra) # 80001d08 <_ZN9Scheduler3putEP3TCB>
}
    80002edc:	02813083          	ld	ra,40(sp)
    80002ee0:	02013403          	ld	s0,32(sp)
    80002ee4:	01813483          	ld	s1,24(sp)
    80002ee8:	03010113          	addi	sp,sp,48
    80002eec:	00008067          	ret

0000000080002ef0 <_ZN3TCBnwEm>:
void *TCB::operator new(size_t) {
    80002ef0:	ff010113          	addi	sp,sp,-16
    80002ef4:	00813423          	sd	s0,8(sp)
    80002ef8:	01010413          	addi	s0,sp,16
        }
    };
    void* allocResource(int &id){
        if(indexFree>=DEFAULT_SIZE) return nullptr;
    80002efc:	00037797          	auipc	a5,0x37
    80002f00:	a8c7a783          	lw	a5,-1396(a5) # 80039988 <_ZN3TCB15threadAllocatorE+0x22000>
    80002f04:	3ff00713          	li	a4,1023
    80002f08:	06f74c63          	blt	a4,a5,80002f80 <_ZN3TCBnwEm+0x90>
        void *ret=&resourceBlock[indexFree*sizeof (T)];
    80002f0c:	00479713          	slli	a4,a5,0x4
    80002f10:	00f70733          	add	a4,a4,a5
    80002f14:	00371513          	slli	a0,a4,0x3
    80002f18:	00015717          	auipc	a4,0x15
    80002f1c:	a7070713          	addi	a4,a4,-1424 # 80017988 <_ZN3TCB15threadAllocatorE>
    80002f20:	00e50533          	add	a0,a0,a4
        occupied[indexFree]=true;
    80002f24:	00f70733          	add	a4,a4,a5
    80002f28:	000226b7          	lui	a3,0x22
    80002f2c:	00e68733          	add	a4,a3,a4
    80002f30:	00100693          	li	a3,1
    80002f34:	00d70223          	sb	a3,4(a4)
        id=indexFree;
    80002f38:	00015717          	auipc	a4,0x15
    80002f3c:	a4f72023          	sw	a5,-1472(a4) # 80017978 <_ZN3TCB3sidE>
        int i;
        for(i=indexFree;i<DEFAULT_SIZE;i++){
    80002f40:	3ff00713          	li	a4,1023
    80002f44:	02f74463          	blt	a4,a5,80002f6c <_ZN3TCBnwEm+0x7c>
            if(!occupied[i]) break;
    80002f48:	00015717          	auipc	a4,0x15
    80002f4c:	a4070713          	addi	a4,a4,-1472 # 80017988 <_ZN3TCB15threadAllocatorE>
    80002f50:	00f706b3          	add	a3,a4,a5
    80002f54:	00022737          	lui	a4,0x22
    80002f58:	00d70733          	add	a4,a4,a3
    80002f5c:	00474703          	lbu	a4,4(a4) # 22004 <_entry-0x7ffddffc>
    80002f60:	00070663          	beqz	a4,80002f6c <_ZN3TCBnwEm+0x7c>
        for(i=indexFree;i<DEFAULT_SIZE;i++){
    80002f64:	0017879b          	addiw	a5,a5,1
    80002f68:	fd9ff06f          	j	80002f40 <_ZN3TCBnwEm+0x50>
        }
        indexFree=i;
    80002f6c:	00037717          	auipc	a4,0x37
    80002f70:	a0f72e23          	sw	a5,-1508(a4) # 80039988 <_ZN3TCB15threadAllocatorE+0x22000>
}
    80002f74:	00813403          	ld	s0,8(sp)
    80002f78:	01010113          	addi	sp,sp,16
    80002f7c:	00008067          	ret
        if(indexFree>=DEFAULT_SIZE) return nullptr;
    80002f80:	00000513          	li	a0,0
    return threadAllocator.allocResource(sid);
    80002f84:	ff1ff06f          	j	80002f74 <_ZN3TCBnwEm+0x84>

0000000080002f88 <_ZN3TCB7setMainEv>:
void TCB::setMain() {
    80002f88:	ff010113          	addi	sp,sp,-16
    80002f8c:	00813423          	sd	s0,8(sp)
    80002f90:	01010413          	addi	s0,sp,16
    savedSStatus=0;
    80002f94:	02053823          	sd	zero,48(a0)
    isMain=true;
    80002f98:	00100793          	li	a5,1
    80002f9c:	00f50423          	sb	a5,8(a0)
}
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret

0000000080002fac <_ZN3TCBdlEPv>:
void TCB::operator delete(void *ptr)  {
    80002fac:	fd010113          	addi	sp,sp,-48
    80002fb0:	02113423          	sd	ra,40(sp)
    80002fb4:	02813023          	sd	s0,32(sp)
    80002fb8:	00913c23          	sd	s1,24(sp)
    80002fbc:	03010413          	addi	s0,sp,48
    80002fc0:	00050493          	mv	s1,a0
    MemoryAllocator m=MemoryAllocator::getAllocatorInstance();
    80002fc4:	00001097          	auipc	ra,0x1
    80002fc8:	958080e7          	jalr	-1704(ra) # 8000391c <_ZN15MemoryAllocator20getAllocatorInstanceEv>
    80002fcc:	00053783          	ld	a5,0(a0)
    80002fd0:	fcf43c23          	sd	a5,-40(s0)
    m.deallocate(t->userStack);
    80002fd4:	0284b583          	ld	a1,40(s1)
    80002fd8:	fd840513          	addi	a0,s0,-40
    80002fdc:	00001097          	auipc	ra,0x1
    80002fe0:	a34080e7          	jalr	-1484(ra) # 80003a10 <_ZN15MemoryAllocator10deallocateEPv>
    threadAllocator.deallocResource(t->resourceId);
    80002fe4:	0484a683          	lw	a3,72(s1)
        return ret;
    };
    //T* getResource(uint64 id);
    void deallocResource(int id){
        occupied[id]=false;
    80002fe8:	00015797          	auipc	a5,0x15
    80002fec:	9a078793          	addi	a5,a5,-1632 # 80017988 <_ZN3TCB15threadAllocatorE>
    80002ff0:	00d78733          	add	a4,a5,a3
    80002ff4:	000227b7          	lui	a5,0x22
    80002ff8:	00e787b3          	add	a5,a5,a4
    80002ffc:	00078223          	sb	zero,4(a5) # 22004 <_entry-0x7ffddffc>
        if(indexFree>id){
    80003000:	00037797          	auipc	a5,0x37
    80003004:	9887a783          	lw	a5,-1656(a5) # 80039988 <_ZN3TCB15threadAllocatorE+0x22000>
    80003008:	00f6d663          	bge	a3,a5,80003014 <_ZN3TCBdlEPv+0x68>
            indexFree=id;
    8000300c:	00037797          	auipc	a5,0x37
    80003010:	96d7ae23          	sw	a3,-1668(a5) # 80039988 <_ZN3TCB15threadAllocatorE+0x22000>
}
    80003014:	02813083          	ld	ra,40(sp)
    80003018:	02013403          	ld	s0,32(sp)
    8000301c:	01813483          	ld	s1,24(sp)
    80003020:	03010113          	addi	sp,sp,48
    80003024:	00008067          	ret

0000000080003028 <_ZN3TCB12setCompletedEb>:
void TCB::setCompleted(bool b) {
    80003028:	ff010113          	addi	sp,sp,-16
    8000302c:	00813423          	sd	s0,8(sp)
    80003030:	01010413          	addi	s0,sp,16
    completed=b;
    80003034:	08b50023          	sb	a1,128(a0)
}
    80003038:	00813403          	ld	s0,8(sp)
    8000303c:	01010113          	addi	sp,sp,16
    80003040:	00008067          	ret

0000000080003044 <_ZNK3TCB11isCompletedEv>:
bool TCB::isCompleted() const {
    80003044:	ff010113          	addi	sp,sp,-16
    80003048:	00813423          	sd	s0,8(sp)
    8000304c:	01010413          	addi	s0,sp,16
}
    80003050:	08054503          	lbu	a0,128(a0)
    80003054:	00813403          	ld	s0,8(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret

0000000080003060 <_ZN3TCB10getRunningEv>:
TCB *TCB::getRunning() {
    80003060:	ff010113          	addi	sp,sp,-16
    80003064:	00813423          	sd	s0,8(sp)
    80003068:	01010413          	addi	s0,sp,16
}
    8000306c:	00015517          	auipc	a0,0x15
    80003070:	90453503          	ld	a0,-1788(a0) # 80017970 <_ZN3TCB7runningE>
    80003074:	00813403          	ld	s0,8(sp)
    80003078:	01010113          	addi	sp,sp,16
    8000307c:	00008067          	ret

0000000080003080 <_ZN3TCB10setRunningEPS_>:
void TCB::setRunning(TCB *t) {
    80003080:	ff010113          	addi	sp,sp,-16
    80003084:	00813423          	sd	s0,8(sp)
    80003088:	01010413          	addi	s0,sp,16
    running=t;
    8000308c:	00015797          	auipc	a5,0x15
    80003090:	8ea7b223          	sd	a0,-1820(a5) # 80017970 <_ZN3TCB7runningE>
}
    80003094:	00813403          	ld	s0,8(sp)
    80003098:	01010113          	addi	sp,sp,16
    8000309c:	00008067          	ret

00000000800030a0 <_ZNK3TCB15getSavedSStatusEv>:
uint64 TCB::getSavedSStatus() const {
    800030a0:	ff010113          	addi	sp,sp,-16
    800030a4:	00813423          	sd	s0,8(sp)
    800030a8:	01010413          	addi	s0,sp,16
}
    800030ac:	03053503          	ld	a0,48(a0)
    800030b0:	00813403          	ld	s0,8(sp)
    800030b4:	01010113          	addi	sp,sp,16
    800030b8:	00008067          	ret

00000000800030bc <_ZNK3TCB12getTimeSliceEv>:
time_t TCB::getTimeSlice() const {
    800030bc:	ff010113          	addi	sp,sp,-16
    800030c0:	00813423          	sd	s0,8(sp)
    800030c4:	01010413          	addi	s0,sp,16
}
    800030c8:	01053503          	ld	a0,16(a0)
    800030cc:	00813403          	ld	s0,8(sp)
    800030d0:	01010113          	addi	sp,sp,16
    800030d4:	00008067          	ret

00000000800030d8 <_ZN3TCB18incTimeSlicePassedEv>:
void TCB::incTimeSlicePassed() {
    800030d8:	ff010113          	addi	sp,sp,-16
    800030dc:	00813423          	sd	s0,8(sp)
    800030e0:	01010413          	addi	s0,sp,16
    timeSlicePassed++;
    800030e4:	00015717          	auipc	a4,0x15
    800030e8:	88c70713          	addi	a4,a4,-1908 # 80017970 <_ZN3TCB7runningE>
    800030ec:	01073783          	ld	a5,16(a4)
    800030f0:	00178793          	addi	a5,a5,1
    800030f4:	00f73823          	sd	a5,16(a4)
}
    800030f8:	00813403          	ld	s0,8(sp)
    800030fc:	01010113          	addi	sp,sp,16
    80003100:	00008067          	ret

0000000080003104 <_ZN3TCB15setTimedWaitSemEP4SemC>:
void TCB::setTimedWaitSem(SemC *s) {
    80003104:	ff010113          	addi	sp,sp,-16
    80003108:	00813423          	sd	s0,8(sp)
    8000310c:	01010413          	addi	s0,sp,16
    timedWaitSem=s;
    80003110:	00b53023          	sd	a1,0(a0)
}
    80003114:	00813403          	ld	s0,8(sp)
    80003118:	01010113          	addi	sp,sp,16
    8000311c:	00008067          	ret

0000000080003120 <_ZNK3TCB15getTimedWaitSemEv>:
SemC *TCB::getTimedWaitSem() const {
    80003120:	ff010113          	addi	sp,sp,-16
    80003124:	00813423          	sd	s0,8(sp)
    80003128:	01010413          	addi	s0,sp,16
}
    8000312c:	00053503          	ld	a0,0(a0)
    80003130:	00813403          	ld	s0,8(sp)
    80003134:	01010113          	addi	sp,sp,16
    80003138:	00008067          	ret

000000008000313c <_ZNK3TCB26getInterruptedWhileWaitingEv>:
bool TCB::getInterruptedWhileWaiting() const {
    8000313c:	ff010113          	addi	sp,sp,-16
    80003140:	00813423          	sd	s0,8(sp)
    80003144:	01010413          	addi	s0,sp,16
}
    80003148:	00954503          	lbu	a0,9(a0)
    8000314c:	00813403          	ld	s0,8(sp)
    80003150:	01010113          	addi	sp,sp,16
    80003154:	00008067          	ret

0000000080003158 <_ZN3TCB28resetInterruptedWhileWaitingEv>:
void TCB::resetInterruptedWhileWaiting() {
    80003158:	ff010113          	addi	sp,sp,-16
    8000315c:	00813423          	sd	s0,8(sp)
    80003160:	01010413          	addi	s0,sp,16
    interruptedWhileWaiting=false;
    80003164:	000504a3          	sb	zero,9(a0)
}
    80003168:	00813403          	ld	s0,8(sp)
    8000316c:	01010113          	addi	sp,sp,16
    80003170:	00008067          	ret

0000000080003174 <_ZN3TCB20resetTimeSlicePassedEv>:
void TCB::resetTimeSlicePassed() {
    80003174:	ff010113          	addi	sp,sp,-16
    80003178:	00813423          	sd	s0,8(sp)
    8000317c:	01010413          	addi	s0,sp,16
    timeSlicePassed=0;
    80003180:	00015797          	auipc	a5,0x15
    80003184:	8007b023          	sd	zero,-2048(a5) # 80017980 <_ZN3TCB15timeSlicePassedE>
}
    80003188:	00813403          	ld	s0,8(sp)
    8000318c:	01010113          	addi	sp,sp,16
    80003190:	00008067          	ret

0000000080003194 <_ZN3TCB18getTimeSlicePassedEv>:
time_t TCB::getTimeSlicePassed() {
    80003194:	ff010113          	addi	sp,sp,-16
    80003198:	00813423          	sd	s0,8(sp)
    8000319c:	01010413          	addi	s0,sp,16
}
    800031a0:	00014517          	auipc	a0,0x14
    800031a4:	7e053503          	ld	a0,2016(a0) # 80017980 <_ZN3TCB15timeSlicePassedE>
    800031a8:	00813403          	ld	s0,8(sp)
    800031ac:	01010113          	addi	sp,sp,16
    800031b0:	00008067          	ret

00000000800031b4 <_ZN3TCB5yieldEPS_S0_>:
void TCB::yield(TCB *oldThread, TCB *newThread) {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    if(oldThread){
    800031c0:	00050a63          	beqz	a0,800031d4 <_ZN3TCB5yieldEPS_S0_+0x20>
        asm volatile("mv %0, sp":"=r"(oldThread->savedUSP));
    800031c4:	00010793          	mv	a5,sp
    800031c8:	02f53c23          	sd	a5,56(a0)
        asm volatile("mv %0, ra":"=r"(oldThread->savedJmp));
    800031cc:	00008793          	mv	a5,ra
    800031d0:	04f53023          	sd	a5,64(a0)
    asm volatile("mv sp, %0"::"r"(newThread->savedUSP));
    800031d4:	0385b783          	ld	a5,56(a1)
    800031d8:	00078113          	mv	sp,a5
    asm volatile("mv ra, %0"::"r"(newThread->savedJmp));
    800031dc:	0405b783          	ld	a5,64(a1)
    800031e0:	00078093          	mv	ra,a5
}
    800031e4:	00813403          	ld	s0,8(sp)
    800031e8:	01010113          	addi	sp,sp,16
    800031ec:	00008067          	ret

00000000800031f0 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    800031f0:	fd010113          	addi	sp,sp,-48
    800031f4:	02113423          	sd	ra,40(sp)
    800031f8:	02813023          	sd	s0,32(sp)
    800031fc:	00913c23          	sd	s1,24(sp)
    80003200:	01213823          	sd	s2,16(sp)
    80003204:	01313423          	sd	s3,8(sp)
    80003208:	03010413          	addi	s0,sp,48
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    8000320c:	10000793          	li	a5,256
    80003210:	1007b073          	csrc	sstatus,a5
    resetTimeSlicePassed();
    80003214:	00000097          	auipc	ra,0x0
    80003218:	f60080e7          	jalr	-160(ra) # 80003174 <_ZN3TCB20resetTimeSlicePassedEv>
    Scheduler &s=Scheduler::getSchedulerInstance();
    8000321c:	fffff097          	auipc	ra,0xfffff
    80003220:	acc080e7          	jalr	-1332(ra) # 80001ce8 <_ZN9Scheduler20getSchedulerInstanceEv>
    80003224:	00050993          	mv	s3,a0
    TCB* newThread=s.get();
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	b30080e7          	jalr	-1232(ra) # 80001d58 <_ZN9Scheduler3getEv>
    80003230:	00050913          	mv	s2,a0
    TCB* oldThread=getRunning();
    80003234:	00000097          	auipc	ra,0x0
    80003238:	e2c080e7          	jalr	-468(ra) # 80003060 <_ZN3TCB10getRunningEv>
    8000323c:	00050493          	mv	s1,a0
    if(!oldThread->isCompleted()){
    80003240:	00000097          	auipc	ra,0x0
    80003244:	e04080e7          	jalr	-508(ra) # 80003044 <_ZNK3TCB11isCompletedEv>
    80003248:	04050a63          	beqz	a0,8000329c <_ZN3TCB8dispatchEv+0xac>
        delete oldThread;
    8000324c:	00048a63          	beqz	s1,80003260 <_ZN3TCB8dispatchEv+0x70>
    80003250:	00048513          	mv	a0,s1
    80003254:	00000097          	auipc	ra,0x0
    80003258:	d58080e7          	jalr	-680(ra) # 80002fac <_ZN3TCBdlEPv>
        oldThread= nullptr;
    8000325c:	00000493          	li	s1,0
    setRunning(newThread);
    80003260:	00090513          	mv	a0,s2
    80003264:	00000097          	auipc	ra,0x0
    80003268:	e1c080e7          	jalr	-484(ra) # 80003080 <_ZN3TCB10setRunningEPS_>
    if(oldThread!=newThread){
    8000326c:	01248a63          	beq	s1,s2,80003280 <_ZN3TCB8dispatchEv+0x90>
        yield(oldThread,newThread);
    80003270:	00090593          	mv	a1,s2
    80003274:	00048513          	mv	a0,s1
    80003278:	00000097          	auipc	ra,0x0
    8000327c:	f3c080e7          	jalr	-196(ra) # 800031b4 <_ZN3TCB5yieldEPS_S0_>
}
    80003280:	02813083          	ld	ra,40(sp)
    80003284:	02013403          	ld	s0,32(sp)
    80003288:	01813483          	ld	s1,24(sp)
    8000328c:	01013903          	ld	s2,16(sp)
    80003290:	00813983          	ld	s3,8(sp)
    80003294:	03010113          	addi	sp,sp,48
    80003298:	00008067          	ret
        s.put(oldThread);
    8000329c:	00048593          	mv	a1,s1
    800032a0:	00098513          	mv	a0,s3
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	a64080e7          	jalr	-1436(ra) # 80001d08 <_ZN9Scheduler3putEP3TCB>
    800032ac:	fb5ff06f          	j	80003260 <_ZN3TCB8dispatchEv+0x70>

00000000800032b0 <_GLOBAL__sub_I__ZN3TCB7runningE>:
}
    800032b0:	ff010113          	addi	sp,sp,-16
    800032b4:	00113423          	sd	ra,8(sp)
    800032b8:	00813023          	sd	s0,0(sp)
    800032bc:	01010413          	addi	s0,sp,16
    800032c0:	000105b7          	lui	a1,0x10
    800032c4:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800032c8:	00100513          	li	a0,1
    800032cc:	00000097          	auipc	ra,0x0
    800032d0:	ad8080e7          	jalr	-1320(ra) # 80002da4 <_Z41__static_initialization_and_destruction_0ii>
    800032d4:	00813083          	ld	ra,8(sp)
    800032d8:	00013403          	ld	s0,0(sp)
    800032dc:	01010113          	addi	sp,sp,16
    800032e0:	00008067          	ret

00000000800032e4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/MemoryAllocator.hpp"
#include "../h/TCB.hpp"
#include "../h/SemC.hpp"
#include "../h/KernelConsole.hpp"
void Riscv::popSppSpie()
{
    800032e4:	ff010113          	addi	sp,sp,-16
    800032e8:	00813423          	sd	s0,8(sp)
    800032ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("csrw sepc, ra");
    800032f0:	14109073          	csrw	sepc,ra
    __asm__ volatile("sret");
    800032f4:	10200073          	sret
}
    800032f8:	00813403          	ld	s0,8(sp)
    800032fc:	01010113          	addi	sp,sp,16
    80003300:	00008067          	ret

0000000080003304 <_ZN5Riscv13handleSyscallEv>:
            Riscv::handleConsole();
            break;
        }
    }
}
void Riscv::handleSyscall() {
    80003304:	f1010113          	addi	sp,sp,-240
    80003308:	0e113423          	sd	ra,232(sp)
    8000330c:	0e813023          	sd	s0,224(sp)
    80003310:	0c913c23          	sd	s1,216(sp)
    80003314:	0d213823          	sd	s2,208(sp)
    80003318:	0d313423          	sd	s3,200(sp)
    8000331c:	0d413023          	sd	s4,192(sp)
    80003320:	0b513c23          	sd	s5,184(sp)
    80003324:	0b613823          	sd	s6,176(sp)
    80003328:	0b713423          	sd	s7,168(sp)
    8000332c:	0f010413          	addi	s0,sp,240
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003330:	141027f3          	csrr	a5,sepc
    80003334:	f2f43023          	sd	a5,-224(s0)
    return sepc;
    80003338:	f2043903          	ld	s2,-224(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000333c:	100027f3          	csrr	a5,sstatus
    80003340:	f0f43c23          	sd	a5,-232(s0)
    return sstatus;
    80003344:	f1843483          	ld	s1,-232(s0)
    asm volatile("csrc sie, %0"::"r"(t));
    80003348:	20000793          	li	a5,512
    8000334c:	1047b073          	csrc	sie,a5
    __asm__ volatile ("mv %0, a0" :"=r"(a0));
    80003350:	00050793          	mv	a5,a0
    80003354:	f0f43823          	sd	a5,-240(s0)
    return a0;
    80003358:	f1043783          	ld	a5,-240(s0)
    uint64 sstatus;
    sepc=Riscv::r_sepc();
    sstatus=Riscv::r_sstatus();
    Riscv::disable_external_interrupts();
    uint64 syscall=Riscv::r_a0();
    switch(syscall){
    8000335c:	04200713          	li	a4,66
    80003360:	04f76063          	bltu	a4,a5,800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    80003364:	00279793          	slli	a5,a5,0x2
    80003368:	00007717          	auipc	a4,0x7
    8000336c:	f7070713          	addi	a4,a4,-144 # 8000a2d8 <CONSOLE_STATUS+0x2c8>
    80003370:	00e787b3          	add	a5,a5,a4
    80003374:	0007a783          	lw	a5,0(a5)
    80003378:	00e787b3          	add	a5,a5,a4
    8000337c:	00078067          	jr	a5
        case 0x00UL:{
            Riscv::w_sstatus(TCB::getRunning()->getSavedSStatus());
    80003380:	00000097          	auipc	ra,0x0
    80003384:	ce0080e7          	jalr	-800(ra) # 80003060 <_ZN3TCB10getRunningEv>
    80003388:	00000097          	auipc	ra,0x0
    8000338c:	d18080e7          	jalr	-744(ra) # 800030a0 <_ZNK3TCB15getSavedSStatusEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003390:	10051073          	csrw	sstatus,a0
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003394:	100027f3          	csrr	a5,sstatus
    80003398:	f2f43423          	sd	a5,-216(s0)
    return sstatus;
    8000339c:	f2843483          	ld	s1,-216(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800033a0:	14191073          	csrw	sepc,s2
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800033a4:	10049073          	csrw	sstatus,s1
            break;
        }
    }
    Riscv::w_sepc(sepc);
    Riscv::w_sstatus(sstatus);
}
    800033a8:	0e813083          	ld	ra,232(sp)
    800033ac:	0e013403          	ld	s0,224(sp)
    800033b0:	0d813483          	ld	s1,216(sp)
    800033b4:	0d013903          	ld	s2,208(sp)
    800033b8:	0c813983          	ld	s3,200(sp)
    800033bc:	0c013a03          	ld	s4,192(sp)
    800033c0:	0b813a83          	ld	s5,184(sp)
    800033c4:	0b013b03          	ld	s6,176(sp)
    800033c8:	0a813b83          	ld	s7,168(sp)
    800033cc:	0f010113          	addi	sp,sp,240
    800033d0:	00008067          	ret
            MemoryAllocator &m=MemoryAllocator::getAllocatorInstance();
    800033d4:	00000097          	auipc	ra,0x0
    800033d8:	548080e7          	jalr	1352(ra) # 8000391c <_ZN15MemoryAllocator20getAllocatorInstanceEv>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    800033dc:	00058793          	mv	a5,a1
    800033e0:	f2f43823          	sd	a5,-208(s0)
    return a1;
    800033e4:	f3043583          	ld	a1,-208(s0)
            void* retval=m.allocate(arg);
    800033e8:	0005859b          	sext.w	a1,a1
    800033ec:	00000097          	auipc	ra,0x0
    800033f0:	58c080e7          	jalr	1420(ra) # 80003978 <_ZN15MemoryAllocator8allocateEi>
            asm volatile("mv a0, %0"::"r"(retval));
    800033f4:	00050513          	mv	a0,a0
            break;
    800033f8:	fa9ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
            MemoryAllocator &m=MemoryAllocator::getAllocatorInstance();
    800033fc:	00000097          	auipc	ra,0x0
    80003400:	520080e7          	jalr	1312(ra) # 8000391c <_ZN15MemoryAllocator20getAllocatorInstanceEv>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    80003404:	00058793          	mv	a5,a1
    80003408:	f2f43c23          	sd	a5,-200(s0)
    return a1;
    8000340c:	f3843583          	ld	a1,-200(s0)
            int retval=m.deallocate(arg);
    80003410:	00000097          	auipc	ra,0x0
    80003414:	600080e7          	jalr	1536(ra) # 80003a10 <_ZN15MemoryAllocator10deallocateEPv>
            asm volatile("mv a0, %0"::"r"(retval));
    80003418:	00050513          	mv	a0,a0
            break;
    8000341c:	f85ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
            asm volatile("mv a4, a7");
    80003420:	00088713          	mv	a4,a7
    __asm__ volatile ("mv %0, a3" :"=r"(a3));
    80003424:	00068793          	mv	a5,a3
    80003428:	f4f43c23          	sd	a5,-168(s0)
    return a3;
    8000342c:	f5843b03          	ld	s6,-168(s0)
    __asm__ volatile ("mv %0, a2" :"=r"(a2));
    80003430:	00060793          	mv	a5,a2
    80003434:	f4f43823          	sd	a5,-176(s0)
    return a2;
    80003438:	f5043a83          	ld	s5,-176(s0)
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    8000343c:	00058793          	mv	a5,a1
    80003440:	f4f43423          	sd	a5,-184(s0)
    return a1;
    80003444:	f4843a03          	ld	s4,-184(s0)
    __asm__ volatile ("mv %0, a4" :"=r"(a4));
    80003448:	00070793          	mv	a5,a4
    8000344c:	f4f43023          	sd	a5,-192(s0)
    return a4;
    80003450:	f4043b83          	ld	s7,-192(s0)
            thread_t createdThread=new TCB(fptr, arg, sp);
    80003454:	08800513          	li	a0,136
    80003458:	00000097          	auipc	ra,0x0
    8000345c:	a98080e7          	jalr	-1384(ra) # 80002ef0 <_ZN3TCBnwEm>
    80003460:	00050993          	mv	s3,a0
    80003464:	000b8693          	mv	a3,s7
    80003468:	000b0613          	mv	a2,s6
    8000346c:	000a8593          	mv	a1,s5
    80003470:	00000097          	auipc	ra,0x0
    80003474:	9e4080e7          	jalr	-1564(ra) # 80002e54 <_ZN3TCBC1EPFvPvES0_Pm>
            *handle=createdThread;
    80003478:	013a3023          	sd	s3,0(s4)
            if(createdThread== nullptr){
    8000347c:	00098863          	beqz	s3,8000348c <_ZN5Riscv13handleSyscallEv+0x188>
                retval=0;
    80003480:	00000793          	li	a5,0
            asm volatile("mv a0,%0"::"r"(retval));
    80003484:	00078513          	mv	a0,a5
            break;
    80003488:	f19ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
                retval=-1;
    8000348c:	fff00793          	li	a5,-1
    80003490:	ff5ff06f          	j	80003484 <_ZN5Riscv13handleSyscallEv+0x180>
            TCB* exiting=TCB::getRunning();
    80003494:	00000097          	auipc	ra,0x0
    80003498:	bcc080e7          	jalr	-1076(ra) # 80003060 <_ZN3TCB10getRunningEv>
            exiting->setCompleted(true);
    8000349c:	00100593          	li	a1,1
    800034a0:	00000097          	auipc	ra,0x0
    800034a4:	b88080e7          	jalr	-1144(ra) # 80003028 <_ZN3TCB12setCompletedEb>
            asm volatile("mv a0,%0"::"r"(retval));
    800034a8:	00000793          	li	a5,0
    800034ac:	00078513          	mv	a0,a5
            break;
    800034b0:	ef1ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
            TCB::dispatch();
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	d3c080e7          	jalr	-708(ra) # 800031f0 <_ZN3TCB8dispatchEv>
            break;
    800034bc:	ee5ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    800034c0:	00058793          	mv	a5,a1
    800034c4:	f6f43423          	sd	a5,-152(s0)
    return a1;
    800034c8:	f6843a83          	ld	s5,-152(s0)
    __asm__ volatile ("mv %0, a2" :"=r"(a2));
    800034cc:	00060793          	mv	a5,a2
    800034d0:	f6f43023          	sd	a5,-160(s0)
    return a2;
    800034d4:	f6043a03          	ld	s4,-160(s0)
            unsigned int val=(unsigned int)Riscv::r_a2();
    800034d8:	000a0a1b          	sext.w	s4,s4
            sem_t createdSem=new SemC(val);
    800034dc:	02800513          	li	a0,40
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	aa4080e7          	jalr	-1372(ra) # 80001f84 <_ZN4SemCnwEm>
    800034e8:	00050993          	mv	s3,a0
    800034ec:	000a0593          	mv	a1,s4
    800034f0:	fffff097          	auipc	ra,0xfffff
    800034f4:	920080e7          	jalr	-1760(ra) # 80001e10 <_ZN4SemCC1Ej>
            *handle=createdSem;
    800034f8:	013ab023          	sd	s3,0(s5)
            if(createdSem== nullptr){
    800034fc:	00098863          	beqz	s3,8000350c <_ZN5Riscv13handleSyscallEv+0x208>
                retval=0;
    80003500:	00000793          	li	a5,0
            asm volatile("mv a0,%0"::"r"(retval));
    80003504:	00078513          	mv	a0,a5
            break;
    80003508:	e99ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
                retval=-1;
    8000350c:	fff00793          	li	a5,-1
    80003510:	ff5ff06f          	j	80003504 <_ZN5Riscv13handleSyscallEv+0x200>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    80003514:	00058793          	mv	a5,a1
    80003518:	f6f43823          	sd	a5,-144(s0)
    return a1;
    8000351c:	f7043503          	ld	a0,-144(s0)
            if(handle){
    80003520:	00051863          	bnez	a0,80003530 <_ZN5Riscv13handleSyscallEv+0x22c>
            int retval=-1;
    80003524:	fff00793          	li	a5,-1
            asm volatile("mv a0,%0"::"r"(retval));
    80003528:	00078513          	mv	a0,a5
            break;
    8000352c:	e75ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
                handle->closing();
    80003530:	fffff097          	auipc	ra,0xfffff
    80003534:	dc8080e7          	jalr	-568(ra) # 800022f8 <_ZN4SemC7closingEv>
                retval=0;
    80003538:	00000793          	li	a5,0
    8000353c:	fedff06f          	j	80003528 <_ZN5Riscv13handleSyscallEv+0x224>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    80003540:	00058793          	mv	a5,a1
    80003544:	f6f43c23          	sd	a5,-136(s0)
    return a1;
    80003548:	f7843503          	ld	a0,-136(s0)
            int retval=handle->wait();
    8000354c:	fffff097          	auipc	ra,0xfffff
    80003550:	bd4080e7          	jalr	-1068(ra) # 80002120 <_ZN4SemC4waitEv>
            asm volatile("mv a0,%0"::"r"(retval));
    80003554:	00050513          	mv	a0,a0
            break;
    80003558:	e49ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    8000355c:	00058793          	mv	a5,a1
    80003560:	f8f43023          	sd	a5,-128(s0)
    return a1;
    80003564:	f8043503          	ld	a0,-128(s0)
            int retval=handle->signal();
    80003568:	fffff097          	auipc	ra,0xfffff
    8000356c:	d48080e7          	jalr	-696(ra) # 800022b0 <_ZN4SemC6signalEv>
            asm volatile("mv a0,%0"::"r"(retval));
    80003570:	00050513          	mv	a0,a0
            break;
    80003574:	e2dff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    80003578:	00058793          	mv	a5,a1
    8000357c:	f8f43823          	sd	a5,-112(s0)
    return a1;
    80003580:	f9043503          	ld	a0,-112(s0)
    __asm__ volatile ("mv %0, a2" :"=r"(a2));
    80003584:	00060793          	mv	a5,a2
    80003588:	f8f43423          	sd	a5,-120(s0)
    return a2;
    8000358c:	f8843583          	ld	a1,-120(s0)
            int retval=handle->timedwait(time);
    80003590:	fffff097          	auipc	ra,0xfffff
    80003594:	8b8080e7          	jalr	-1864(ra) # 80001e48 <_ZN4SemC9timedwaitEm>
            asm volatile("mv a0,%0"::"r"(retval));
    80003598:	00050513          	mv	a0,a0
            break;
    8000359c:	e05ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    800035a0:	00058793          	mv	a5,a1
    800035a4:	f8f43c23          	sd	a5,-104(s0)
    return a1;
    800035a8:	f9843503          	ld	a0,-104(s0)
            int retval=handle->trywait();
    800035ac:	fffff097          	auipc	ra,0xfffff
    800035b0:	9a8080e7          	jalr	-1624(ra) # 80001f54 <_ZN4SemC7trywaitEv>
            asm volatile("mv a0,%0"::"r"(retval));
    800035b4:	00050513          	mv	a0,a0
            break;
    800035b8:	de9ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    800035bc:	00058793          	mv	a5,a1
    800035c0:	faf43023          	sd	a5,-96(s0)
    return a1;
    800035c4:	fa043983          	ld	s3,-96(s0)
            if(ticks>0){
    800035c8:	00099863          	bnez	s3,800035d8 <_ZN5Riscv13handleSyscallEv+0x2d4>
                retval=-1;
    800035cc:	fff00793          	li	a5,-1
            asm volatile("mv a0, %0"::"r"(retval));
    800035d0:	00078513          	mv	a0,a5
            break;
    800035d4:	dcdff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
                SleepQueue& sl=SleepQueue::getSleepQueueInstance();
    800035d8:	fffff097          	auipc	ra,0xfffff
    800035dc:	56c080e7          	jalr	1388(ra) # 80002b44 <_ZN10SleepQueue21getSleepQueueInstanceEv>
    800035e0:	00050a13          	mv	s4,a0
                sl.put(TCB::getRunning(),ticks);
    800035e4:	00000097          	auipc	ra,0x0
    800035e8:	a7c080e7          	jalr	-1412(ra) # 80003060 <_ZN3TCB10getRunningEv>
    800035ec:	00050593          	mv	a1,a0
    800035f0:	00098613          	mv	a2,s3
    800035f4:	000a0513          	mv	a0,s4
    800035f8:	fffff097          	auipc	ra,0xfffff
    800035fc:	5cc080e7          	jalr	1484(ra) # 80002bc4 <_ZN10SleepQueue3putEP3TCBm>
                retval=0;
    80003600:	00000793          	li	a5,0
    80003604:	fcdff06f          	j	800035d0 <_ZN5Riscv13handleSyscallEv+0x2cc>
            KernelConsole &console=KernelConsole::getConsoleInstance();
    80003608:	00000097          	auipc	ra,0x0
    8000360c:	57c080e7          	jalr	1404(ra) # 80003b84 <_ZN13KernelConsole18getConsoleInstanceEv>
            char retval=console.getCharIn();
    80003610:	00000097          	auipc	ra,0x0
    80003614:	608080e7          	jalr	1544(ra) # 80003c18 <_ZN13KernelConsole9getCharInEv>
            asm volatile("mv a0, %0"::"r"(retval));
    80003618:	00050513          	mv	a0,a0
            break;
    8000361c:	d85ff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    __asm__ volatile ("mv %0, a1" :"=r"(a1));
    80003620:	00058793          	mv	a5,a1
    80003624:	faf43423          	sd	a5,-88(s0)
    return a1;
    80003628:	fa843983          	ld	s3,-88(s0)
            char c=(char)Riscv::r_a1();
    8000362c:	0ff9f993          	andi	s3,s3,255
            KernelConsole &console=KernelConsole::getConsoleInstance();
    80003630:	00000097          	auipc	ra,0x0
    80003634:	554080e7          	jalr	1364(ra) # 80003b84 <_ZN13KernelConsole18getConsoleInstanceEv>
            console.putCharOut(c);
    80003638:	00098593          	mv	a1,s3
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	630080e7          	jalr	1584(ra) # 80003c6c <_ZN13KernelConsole10putCharOutEc>
            break;
    80003644:	d5dff06f          	j	800033a0 <_ZN5Riscv13handleSyscallEv+0x9c>
    80003648:	00050493          	mv	s1,a0
            thread_t createdThread=new TCB(fptr, arg, sp);
    8000364c:	00098513          	mv	a0,s3
    80003650:	00000097          	auipc	ra,0x0
    80003654:	95c080e7          	jalr	-1700(ra) # 80002fac <_ZN3TCBdlEPv>
    80003658:	00048513          	mv	a0,s1
    8000365c:	00038097          	auipc	ra,0x38
    80003660:	aac080e7          	jalr	-1364(ra) # 8003b108 <_Unwind_Resume>
    80003664:	00050493          	mv	s1,a0
            sem_t createdSem=new SemC(val);
    80003668:	00098513          	mv	a0,s3
    8000366c:	fffff097          	auipc	ra,0xfffff
    80003670:	9b0080e7          	jalr	-1616(ra) # 8000201c <_ZN4SemCdlEPv>
    80003674:	00048513          	mv	a0,s1
    80003678:	00038097          	auipc	ra,0x38
    8000367c:	a90080e7          	jalr	-1392(ra) # 8003b108 <_Unwind_Resume>

0000000080003680 <_ZN5Riscv11handleTimerEv>:

void Riscv::handleTimer() {
    80003680:	fc010113          	addi	sp,sp,-64
    80003684:	02113c23          	sd	ra,56(sp)
    80003688:	02813823          	sd	s0,48(sp)
    8000368c:	02913423          	sd	s1,40(sp)
    80003690:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80003694:	00200793          	li	a5,2
    80003698:	1447b073          	csrc	sip,a5
    Riscv::mc_sip(Riscv::SIP_SSIP);
    TCB::incTimeSlicePassed();
    8000369c:	00000097          	auipc	ra,0x0
    800036a0:	a3c080e7          	jalr	-1476(ra) # 800030d8 <_ZN3TCB18incTimeSlicePassedEv>
    asm volatile("csrc sie, %0"::"r"(t));
    800036a4:	20000793          	li	a5,512
    800036a8:	1047b073          	csrc	sie,a5
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800036ac:	141027f3          	csrr	a5,sepc
    800036b0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800036b4:	fc843783          	ld	a5,-56(s0)
    uint64 volatile sepc;
    uint64 volatile sstatus;
    Riscv::disable_external_interrupts();
    sepc=Riscv::r_sepc()-4;
    800036b8:	ffc78793          	addi	a5,a5,-4
    800036bc:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800036c0:	100027f3          	csrr	a5,sstatus
    800036c4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800036c8:	fc043783          	ld	a5,-64(s0)
    sstatus=Riscv::r_sstatus();
    800036cc:	fcf43823          	sd	a5,-48(s0)
    if(TCB::getTimeSlicePassed()>=TCB::getRunning()->getTimeSlice()){
    800036d0:	00000097          	auipc	ra,0x0
    800036d4:	ac4080e7          	jalr	-1340(ra) # 80003194 <_ZN3TCB18getTimeSlicePassedEv>
    800036d8:	00050493          	mv	s1,a0
    800036dc:	00000097          	auipc	ra,0x0
    800036e0:	984080e7          	jalr	-1660(ra) # 80003060 <_ZN3TCB10getRunningEv>
    800036e4:	00000097          	auipc	ra,0x0
    800036e8:	9d8080e7          	jalr	-1576(ra) # 800030bc <_ZNK3TCB12getTimeSliceEv>
    800036ec:	02a4fc63          	bgeu	s1,a0,80003724 <_ZN5Riscv11handleTimerEv+0xa4>
        TCB::dispatch();
        Riscv::w_sepc(sepc);
        Riscv::w_sstatus(sstatus);
    }
    Riscv::w_sepc(sepc);
    800036f0:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800036f4:	14179073          	csrw	sepc,a5
    Riscv::w_sstatus(sstatus);
    800036f8:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800036fc:	10079073          	csrw	sstatus,a5
    SleepQueue& sl=SleepQueue::getSleepQueueInstance();
    80003700:	fffff097          	auipc	ra,0xfffff
    80003704:	444080e7          	jalr	1092(ra) # 80002b44 <_ZN10SleepQueue21getSleepQueueInstanceEv>
    sl.updateTick();
    80003708:	fffff097          	auipc	ra,0xfffff
    8000370c:	5a4080e7          	jalr	1444(ra) # 80002cac <_ZN10SleepQueue10updateTickEv>
}
    80003710:	03813083          	ld	ra,56(sp)
    80003714:	03013403          	ld	s0,48(sp)
    80003718:	02813483          	ld	s1,40(sp)
    8000371c:	04010113          	addi	sp,sp,64
    80003720:	00008067          	ret
        TCB::dispatch();
    80003724:	00000097          	auipc	ra,0x0
    80003728:	acc080e7          	jalr	-1332(ra) # 800031f0 <_ZN3TCB8dispatchEv>
        Riscv::w_sepc(sepc);
    8000372c:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80003730:	14179073          	csrw	sepc,a5
        Riscv::w_sstatus(sstatus);
    80003734:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003738:	10079073          	csrw	sstatus,a5
}
    8000373c:	fb5ff06f          	j	800036f0 <_ZN5Riscv11handleTimerEv+0x70>

0000000080003740 <_ZN5Riscv13handleConsoleEv>:

void Riscv::handleConsole() {
    80003740:	fb010113          	addi	sp,sp,-80
    80003744:	04113423          	sd	ra,72(sp)
    80003748:	04813023          	sd	s0,64(sp)
    8000374c:	02913c23          	sd	s1,56(sp)
    80003750:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80003754:	141027f3          	csrr	a5,sepc
    80003758:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000375c:	fc843783          	ld	a5,-56(s0)
    uint64 volatile sepc;
    uint64 volatile sstatus;
    sepc=Riscv::r_sepc()-4;
    80003760:	ffc78793          	addi	a5,a5,-4
    80003764:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80003768:	100027f3          	csrr	a5,sstatus
    8000376c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80003770:	fc043783          	ld	a5,-64(s0)
    sstatus=Riscv::r_sstatus();
    80003774:	fcf43823          	sd	a5,-48(s0)
    if(plic_claim()!=CONSOLE_IRQ){
    80003778:	00005097          	auipc	ra,0x5
    8000377c:	88c080e7          	jalr	-1908(ra) # 80008004 <plic_claim>
    80003780:	00a00793          	li	a5,10
    80003784:	02f50463          	beq	a0,a5,800037ac <_ZN5Riscv13handleConsoleEv+0x6c>
        Riscv::w_sepc(sepc);
    80003788:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000378c:	14179073          	csrw	sepc,a5
        Riscv::w_sstatus(sstatus);
    80003790:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003794:	10079073          	csrw	sstatus,a5
    }
    plic_complete(CONSOLE_IRQ);
    Riscv::w_sepc(sepc);
    Riscv::w_sstatus(sstatus);
    Riscv::disable_external_interrupts();
    80003798:	04813083          	ld	ra,72(sp)
    8000379c:	04013403          	ld	s0,64(sp)
    800037a0:	03813483          	ld	s1,56(sp)
    800037a4:	05010113          	addi	sp,sp,80
    800037a8:	00008067          	ret
    KernelConsole& console=KernelConsole::getConsoleInstance();
    800037ac:	00000097          	auipc	ra,0x0
    800037b0:	3d8080e7          	jalr	984(ra) # 80003b84 <_ZN13KernelConsole18getConsoleInstanceEv>
    800037b4:	00050493          	mv	s1,a0
    while(*((char*)CONSOLE_STATUS)&CONSOLE_RX_STATUS_BIT){
    800037b8:	0000a797          	auipc	a5,0xa
    800037bc:	cd87b783          	ld	a5,-808(a5) # 8000d490 <_GLOBAL_OFFSET_TABLE_+0x10>
    800037c0:	0007b783          	ld	a5,0(a5)
    800037c4:	0007c783          	lbu	a5,0(a5)
    800037c8:	0017f793          	andi	a5,a5,1
    800037cc:	04078063          	beqz	a5,8000380c <_ZN5Riscv13handleConsoleEv+0xcc>
        volatile char c=*((char*)(CONSOLE_TX_DATA));
    800037d0:	0000a797          	auipc	a5,0xa
    800037d4:	cd87b783          	ld	a5,-808(a5) # 8000d4a8 <_GLOBAL_OFFSET_TABLE_+0x28>
    800037d8:	0007b783          	ld	a5,0(a5)
    800037dc:	0007c783          	lbu	a5,0(a5)
    800037e0:	faf40fa3          	sb	a5,-65(s0)
        if(console.slotsIn()){
    800037e4:	00048513          	mv	a0,s1
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	4dc080e7          	jalr	1244(ra) # 80003cc4 <_ZNK13KernelConsole7slotsInEv>
    800037f0:	fc0504e3          	beqz	a0,800037b8 <_ZN5Riscv13handleConsoleEv+0x78>
            console.putCharIn(c);
    800037f4:	fbf44583          	lbu	a1,-65(s0)
    800037f8:	0ff5f593          	andi	a1,a1,255
    800037fc:	00048513          	mv	a0,s1
    80003800:	00000097          	auipc	ra,0x0
    80003804:	3f0080e7          	jalr	1008(ra) # 80003bf0 <_ZN13KernelConsole9putCharInEc>
    80003808:	fb1ff06f          	j	800037b8 <_ZN5Riscv13handleConsoleEv+0x78>
    plic_complete(CONSOLE_IRQ);
    8000380c:	00a00513          	li	a0,10
    80003810:	00005097          	auipc	ra,0x5
    80003814:	82c080e7          	jalr	-2004(ra) # 8000803c <plic_complete>
    Riscv::w_sepc(sepc);
    80003818:	fd843783          	ld	a5,-40(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000381c:	14179073          	csrw	sepc,a5
    Riscv::w_sstatus(sstatus);
    80003820:	fd043783          	ld	a5,-48(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80003824:	10079073          	csrw	sstatus,a5
    asm volatile("csrc sie, %0"::"r"(t));
    80003828:	20000793          	li	a5,512
    8000382c:	1047b073          	csrc	sie,a5
}
    80003830:	f69ff06f          	j	80003798 <_ZN5Riscv13handleConsoleEv+0x58>

0000000080003834 <_ZN5Riscv4trapEv>:
void Riscv::trap() {
    80003834:	fe010113          	addi	sp,sp,-32
    80003838:	00113c23          	sd	ra,24(sp)
    8000383c:	00813823          	sd	s0,16(sp)
    80003840:	02010413          	addi	s0,sp,32
    asm volatile("mv a7, a4");
    80003844:	00070893          	mv	a7,a4
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80003848:	142027f3          	csrr	a5,scause
    8000384c:	fef43423          	sd	a5,-24(s0)
    return scause;
    80003850:	fe843783          	ld	a5,-24(s0)
    switch(cause){
    80003854:	00900713          	li	a4,9
    80003858:	02f77863          	bgeu	a4,a5,80003888 <_ZN5Riscv4trapEv+0x54>
    8000385c:	fff00713          	li	a4,-1
    80003860:	03f71713          	slli	a4,a4,0x3f
    80003864:	00170713          	addi	a4,a4,1
    80003868:	06e78863          	beq	a5,a4,800038d8 <_ZN5Riscv4trapEv+0xa4>
    8000386c:	fff00713          	li	a4,-1
    80003870:	03f71713          	slli	a4,a4,0x3f
    80003874:	00970713          	addi	a4,a4,9
    80003878:	04e79263          	bne	a5,a4,800038bc <_ZN5Riscv4trapEv+0x88>
            Riscv::handleConsole();
    8000387c:	00000097          	auipc	ra,0x0
    80003880:	ec4080e7          	jalr	-316(ra) # 80003740 <_ZN5Riscv13handleConsoleEv>
}
    80003884:	0380006f          	j	800038bc <_ZN5Riscv4trapEv+0x88>
    switch(cause){
    80003888:	00800713          	li	a4,8
    8000388c:	04e7f063          	bgeu	a5,a4,800038cc <_ZN5Riscv4trapEv+0x98>
    80003890:	00500713          	li	a4,5
    80003894:	00e78663          	beq	a5,a4,800038a0 <_ZN5Riscv4trapEv+0x6c>
    80003898:	00700713          	li	a4,7
    8000389c:	00e79c63          	bne	a5,a4,800038b4 <_ZN5Riscv4trapEv+0x80>
    *ptr=STOP;
    800038a0:	00100737          	lui	a4,0x100
    800038a4:	000057b7          	lui	a5,0x5
    800038a8:	5557879b          	addiw	a5,a5,1365
    800038ac:	00f72023          	sw	a5,0(a4) # 100000 <_entry-0x7ff00000>
}
    800038b0:	00c0006f          	j	800038bc <_ZN5Riscv4trapEv+0x88>
    800038b4:	00200713          	li	a4,2
    800038b8:	fee784e3          	beq	a5,a4,800038a0 <_ZN5Riscv4trapEv+0x6c>
}
    800038bc:	01813083          	ld	ra,24(sp)
    800038c0:	01013403          	ld	s0,16(sp)
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret
            Riscv::handleSyscall();
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	a38080e7          	jalr	-1480(ra) # 80003304 <_ZN5Riscv13handleSyscallEv>
            break;
    800038d4:	fe9ff06f          	j	800038bc <_ZN5Riscv4trapEv+0x88>
            Riscv::handleTimer();
    800038d8:	00000097          	auipc	ra,0x0
    800038dc:	da8080e7          	jalr	-600(ra) # 80003680 <_ZN5Riscv11handleTimerEv>
            break;
    800038e0:	fddff06f          	j	800038bc <_ZN5Riscv4trapEv+0x88>

00000000800038e4 <_ZN15MemoryAllocatorC1Ev>:
#include "../h/MemoryAllocator.hpp"
MemoryAllocator &MemoryAllocator::getAllocatorInstance() {
    static MemoryAllocator instance;
    return instance;
}
MemoryAllocator::MemoryAllocator() {
    800038e4:	ff010113          	addi	sp,sp,-16
    800038e8:	00813423          	sd	s0,8(sp)
    800038ec:	01010413          	addi	s0,sp,16
    800038f0:	0000a797          	auipc	a5,0xa
    800038f4:	ba87b783          	ld	a5,-1112(a5) # 8000d498 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038f8:	0007b783          	ld	a5,0(a5)
    800038fc:	00f53023          	sd	a5,0(a0)
    head->blocksTaken=1;
    80003900:	00100713          	li	a4,1
    80003904:	00e7b023          	sd	a4,0(a5)
    head->nextBlock= 0;
    80003908:	00053783          	ld	a5,0(a0)
    8000390c:	0007b423          	sd	zero,8(a5)
}
    80003910:	00813403          	ld	s0,8(sp)
    80003914:	01010113          	addi	sp,sp,16
    80003918:	00008067          	ret

000000008000391c <_ZN15MemoryAllocator20getAllocatorInstanceEv>:
    static MemoryAllocator instance;
    8000391c:	00036797          	auipc	a5,0x36
    80003920:	4747c783          	lbu	a5,1140(a5) # 80039d90 <_ZGVZN15MemoryAllocator20getAllocatorInstanceEvE8instance>
    80003924:	00078863          	beqz	a5,80003934 <_ZN15MemoryAllocator20getAllocatorInstanceEv+0x18>
}
    80003928:	00036517          	auipc	a0,0x36
    8000392c:	47050513          	addi	a0,a0,1136 # 80039d98 <_ZZN15MemoryAllocator20getAllocatorInstanceEvE8instance>
    80003930:	00008067          	ret
MemoryAllocator &MemoryAllocator::getAllocatorInstance() {
    80003934:	ff010113          	addi	sp,sp,-16
    80003938:	00113423          	sd	ra,8(sp)
    8000393c:	00813023          	sd	s0,0(sp)
    80003940:	01010413          	addi	s0,sp,16
    static MemoryAllocator instance;
    80003944:	00036517          	auipc	a0,0x36
    80003948:	45450513          	addi	a0,a0,1108 # 80039d98 <_ZZN15MemoryAllocator20getAllocatorInstanceEvE8instance>
    8000394c:	00000097          	auipc	ra,0x0
    80003950:	f98080e7          	jalr	-104(ra) # 800038e4 <_ZN15MemoryAllocatorC1Ev>
    80003954:	00100793          	li	a5,1
    80003958:	00036717          	auipc	a4,0x36
    8000395c:	42f70c23          	sb	a5,1080(a4) # 80039d90 <_ZGVZN15MemoryAllocator20getAllocatorInstanceEvE8instance>
}
    80003960:	00036517          	auipc	a0,0x36
    80003964:	43850513          	addi	a0,a0,1080 # 80039d98 <_ZZN15MemoryAllocator20getAllocatorInstanceEvE8instance>
    80003968:	00813083          	ld	ra,8(sp)
    8000396c:	00013403          	ld	s0,0(sp)
    80003970:	01010113          	addi	sp,sp,16
    80003974:	00008067          	ret

0000000080003978 <_ZN15MemoryAllocator8allocateEi>:

void *MemoryAllocator::allocate(int blocks) {
    80003978:	ff010113          	addi	sp,sp,-16
    8000397c:	00813423          	sd	s0,8(sp)
    80003980:	01010413          	addi	s0,sp,16
    BlockDescriptor *elem=head;
    80003984:	00053703          	ld	a4,0(a0)
    while(elem->nextBlock){
    80003988:	00873683          	ld	a3,8(a4)
    8000398c:	04068263          	beqz	a3,800039d0 <_ZN15MemoryAllocator8allocateEi+0x58>
        int freeblocks=(elem->nextBlock-((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
    80003990:	00073503          	ld	a0,0(a4)
    80003994:	00651513          	slli	a0,a0,0x6
    80003998:	00a70533          	add	a0,a4,a0
    8000399c:	40a687b3          	sub	a5,a3,a0
    800039a0:	0067d793          	srli	a5,a5,0x6
    800039a4:	0007879b          	sext.w	a5,a5
        if(freeblocks>=blocks){
    800039a8:	00b7d663          	bge	a5,a1,800039b4 <_ZN15MemoryAllocator8allocateEi+0x3c>
            nelem->nextBlock=elem->nextBlock;
            nelem->blocksTaken=blocks;
            elem->nextBlock=(uint64)nelem;
            return nelem+1;
        }
        elem=(BlockDescriptor*)elem->nextBlock;
    800039ac:	00068713          	mv	a4,a3
    while(elem->nextBlock){
    800039b0:	fd9ff06f          	j	80003988 <_ZN15MemoryAllocator8allocateEi+0x10>
            nelem->nextBlock=elem->nextBlock;
    800039b4:	00d53423          	sd	a3,8(a0)
            nelem->blocksTaken=blocks;
    800039b8:	00b53023          	sd	a1,0(a0)
            elem->nextBlock=(uint64)nelem;
    800039bc:	00a73423          	sd	a0,8(a4)
            return nelem+1;
    800039c0:	01050513          	addi	a0,a0,16
        nelem->blocksTaken=blocks;
        elem->nextBlock=(uint64)nelem;
        return nelem+1;
    }
    return nullptr;
}
    800039c4:	00813403          	ld	s0,8(sp)
    800039c8:	01010113          	addi	sp,sp,16
    800039cc:	00008067          	ret
    if(((uint64)HEAP_END_ADDR-((uint64)elem+elem->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE>=(uint64)blocks){
    800039d0:	00073503          	ld	a0,0(a4)
    800039d4:	00651513          	slli	a0,a0,0x6
    800039d8:	00a70533          	add	a0,a4,a0
    800039dc:	0000a797          	auipc	a5,0xa
    800039e0:	af47b783          	ld	a5,-1292(a5) # 8000d4d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    800039e4:	0007b783          	ld	a5,0(a5)
    800039e8:	40a787b3          	sub	a5,a5,a0
    800039ec:	0067d793          	srli	a5,a5,0x6
    800039f0:	00b7ec63          	bltu	a5,a1,80003a08 <_ZN15MemoryAllocator8allocateEi+0x90>
        nelem->nextBlock=0;
    800039f4:	00053423          	sd	zero,8(a0)
        nelem->blocksTaken=blocks;
    800039f8:	00b53023          	sd	a1,0(a0)
        elem->nextBlock=(uint64)nelem;
    800039fc:	00a73423          	sd	a0,8(a4)
        return nelem+1;
    80003a00:	01050513          	addi	a0,a0,16
    80003a04:	fc1ff06f          	j	800039c4 <_ZN15MemoryAllocator8allocateEi+0x4c>
    return nullptr;
    80003a08:	00000513          	li	a0,0
    80003a0c:	fb9ff06f          	j	800039c4 <_ZN15MemoryAllocator8allocateEi+0x4c>

0000000080003a10 <_ZN15MemoryAllocator10deallocateEPv>:

int MemoryAllocator::deallocate(void *addr) {
    80003a10:	ff010113          	addi	sp,sp,-16
    80003a14:	00813423          	sd	s0,8(sp)
    80003a18:	01010413          	addi	s0,sp,16
    BlockDescriptor* prev=head;
    80003a1c:	00053683          	ld	a3,0(a0)
    BlockDescriptor* curr=(BlockDescriptor*)head->nextBlock;
    80003a20:	0086b783          	ld	a5,8(a3) # 22008 <_entry-0x7ffddff8>
    while(curr){
    80003a24:	02078463          	beqz	a5,80003a4c <_ZN15MemoryAllocator10deallocateEPv+0x3c>
        if(curr+1==addr){
    80003a28:	01078713          	addi	a4,a5,16
    80003a2c:	00b70863          	beq	a4,a1,80003a3c <_ZN15MemoryAllocator10deallocateEPv+0x2c>
            prev->nextBlock=curr->nextBlock;
            return 0;
        }
        prev=curr;
    80003a30:	00078693          	mv	a3,a5
        curr=(BlockDescriptor*)curr->nextBlock;
    80003a34:	0087b783          	ld	a5,8(a5)
    while(curr){
    80003a38:	fedff06f          	j	80003a24 <_ZN15MemoryAllocator10deallocateEPv+0x14>
            prev->nextBlock=curr->nextBlock;
    80003a3c:	0087b783          	ld	a5,8(a5)
    80003a40:	00f6b423          	sd	a5,8(a3)
            return 0;
    80003a44:	00000513          	li	a0,0
    80003a48:	0080006f          	j	80003a50 <_ZN15MemoryAllocator10deallocateEPv+0x40>
    }
    return -1;
    80003a4c:	fff00513          	li	a0,-1
}
    80003a50:	00813403          	ld	s0,8(sp)
    80003a54:	01010113          	addi	sp,sp,16
    80003a58:	00008067          	ret

0000000080003a5c <_ZN15MemoryAllocator4copyEPvS0_m>:
        deallocate(addr);
        return newAddr;
    }
}

void MemoryAllocator::copy(void *d, void *s, uint64 cnt) {
    80003a5c:	ff010113          	addi	sp,sp,-16
    80003a60:	00813423          	sd	s0,8(sp)
    80003a64:	01010413          	addi	s0,sp,16
    uint64* dst=(uint64*)d;
    uint64* src=(uint64*)s;
    for(uint64 i=0;i<cnt*MEM_BLOCK_SIZE;i++){
    80003a68:	00000793          	li	a5,0
    80003a6c:	00669713          	slli	a4,a3,0x6
    80003a70:	00e7fe63          	bgeu	a5,a4,80003a8c <_ZN15MemoryAllocator4copyEPvS0_m+0x30>
        *dst=*src;
    80003a74:	00063703          	ld	a4,0(a2)
    80003a78:	00e5b023          	sd	a4,0(a1)
        dst++;
    80003a7c:	00858593          	addi	a1,a1,8
        src++;
    80003a80:	00860613          	addi	a2,a2,8
    for(uint64 i=0;i<cnt*MEM_BLOCK_SIZE;i++){
    80003a84:	00178793          	addi	a5,a5,1
    80003a88:	fe5ff06f          	j	80003a6c <_ZN15MemoryAllocator4copyEPvS0_m+0x10>
    }
    80003a8c:	00813403          	ld	s0,8(sp)
    80003a90:	01010113          	addi	sp,sp,16
    80003a94:	00008067          	ret

0000000080003a98 <_ZN15MemoryAllocator10reallocateEiPv>:
void *MemoryAllocator::reallocate(int blocks, void* addr) {
    80003a98:	fd010113          	addi	sp,sp,-48
    80003a9c:	02113423          	sd	ra,40(sp)
    80003aa0:	02813023          	sd	s0,32(sp)
    80003aa4:	00913c23          	sd	s1,24(sp)
    80003aa8:	01213823          	sd	s2,16(sp)
    80003aac:	01313423          	sd	s3,8(sp)
    80003ab0:	03010413          	addi	s0,sp,48
    80003ab4:	00050913          	mv	s2,a0
    80003ab8:	00060493          	mv	s1,a2
    BlockDescriptor* curr=((BlockDescriptor*)addr)-1;
    80003abc:	ff060713          	addi	a4,a2,-16
    if(curr->nextBlock){
    80003ac0:	ff863783          	ld	a5,-8(a2)
    80003ac4:	04078863          	beqz	a5,80003b14 <_ZN15MemoryAllocator10reallocateEiPv+0x7c>
        freeblocks=(curr->nextBlock-((uint64)curr+curr->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
    80003ac8:	ff063683          	ld	a3,-16(a2)
    80003acc:	00669693          	slli	a3,a3,0x6
    80003ad0:	00d70733          	add	a4,a4,a3
    80003ad4:	40e787b3          	sub	a5,a5,a4
    80003ad8:	0067d793          	srli	a5,a5,0x6
    80003adc:	0007879b          	sext.w	a5,a5
    if(freeblocks>=blocks){
    80003ae0:	04b7ce63          	blt	a5,a1,80003b3c <_ZN15MemoryAllocator10reallocateEiPv+0xa4>
        curr->blocksTaken+=blocks;
    80003ae4:	ff04b783          	ld	a5,-16(s1)
    80003ae8:	00b785b3          	add	a1,a5,a1
    80003aec:	feb4b823          	sd	a1,-16(s1)
        return curr+1;
    80003af0:	00048993          	mv	s3,s1
}
    80003af4:	00098513          	mv	a0,s3
    80003af8:	02813083          	ld	ra,40(sp)
    80003afc:	02013403          	ld	s0,32(sp)
    80003b00:	01813483          	ld	s1,24(sp)
    80003b04:	01013903          	ld	s2,16(sp)
    80003b08:	00813983          	ld	s3,8(sp)
    80003b0c:	03010113          	addi	sp,sp,48
    80003b10:	00008067          	ret
        freeblocks=((uint64)(HEAP_END_ADDR)-((uint64)curr+curr->blocksTaken*MEM_BLOCK_SIZE))/MEM_BLOCK_SIZE;
    80003b14:	ff063783          	ld	a5,-16(a2)
    80003b18:	00679793          	slli	a5,a5,0x6
    80003b1c:	00f70733          	add	a4,a4,a5
    80003b20:	0000a797          	auipc	a5,0xa
    80003b24:	9b07b783          	ld	a5,-1616(a5) # 8000d4d0 <_GLOBAL_OFFSET_TABLE_+0x50>
    80003b28:	0007b783          	ld	a5,0(a5)
    80003b2c:	40e787b3          	sub	a5,a5,a4
    80003b30:	0067d793          	srli	a5,a5,0x6
    80003b34:	0007879b          	sext.w	a5,a5
    80003b38:	fa9ff06f          	j	80003ae0 <_ZN15MemoryAllocator10reallocateEiPv+0x48>
        void* newAddr=allocate(curr->blocksTaken+blocks);
    80003b3c:	ff04b783          	ld	a5,-16(s1)
    80003b40:	00b785bb          	addw	a1,a5,a1
    80003b44:	00090513          	mv	a0,s2
    80003b48:	00000097          	auipc	ra,0x0
    80003b4c:	e30080e7          	jalr	-464(ra) # 80003978 <_ZN15MemoryAllocator8allocateEi>
    80003b50:	00050993          	mv	s3,a0
        if(!newAddr){
    80003b54:	fa0500e3          	beqz	a0,80003af4 <_ZN15MemoryAllocator10reallocateEiPv+0x5c>
        copy(newAddr,addr,curr->blocksTaken);
    80003b58:	ff04b683          	ld	a3,-16(s1)
    80003b5c:	00048613          	mv	a2,s1
    80003b60:	00050593          	mv	a1,a0
    80003b64:	00090513          	mv	a0,s2
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	ef4080e7          	jalr	-268(ra) # 80003a5c <_ZN15MemoryAllocator4copyEPvS0_m>
        deallocate(addr);
    80003b70:	00048593          	mv	a1,s1
    80003b74:	00090513          	mv	a0,s2
    80003b78:	00000097          	auipc	ra,0x0
    80003b7c:	e98080e7          	jalr	-360(ra) # 80003a10 <_ZN15MemoryAllocator10deallocateEPv>
        return newAddr;
    80003b80:	f75ff06f          	j	80003af4 <_ZN15MemoryAllocator10reallocateEiPv+0x5c>

0000000080003b84 <_ZN13KernelConsole18getConsoleInstanceEv>:
#include "../h/KernelConsole.hpp"

KernelConsole &KernelConsole::getConsoleInstance() {
    static KernelConsole instance;
    80003b84:	00036797          	auipc	a5,0x36
    80003b88:	21c7c783          	lbu	a5,540(a5) # 80039da0 <_ZGVZN13KernelConsole18getConsoleInstanceEvE8instance>
    80003b8c:	00078863          	beqz	a5,80003b9c <_ZN13KernelConsole18getConsoleInstanceEv+0x18>
    return instance;
}
    80003b90:	00036517          	auipc	a0,0x36
    80003b94:	21850513          	addi	a0,a0,536 # 80039da8 <_ZZN13KernelConsole18getConsoleInstanceEvE8instance>
    80003b98:	00008067          	ret
KernelConsole &KernelConsole::getConsoleInstance() {
    80003b9c:	ff010113          	addi	sp,sp,-16
    80003ba0:	00113423          	sd	ra,8(sp)
    80003ba4:	00813023          	sd	s0,0(sp)
    80003ba8:	01010413          	addi	s0,sp,16
    int itemsOut() const;
    int slotsIn() const;
private:
    IOBuffer input;
    IOBuffer output;
    KernelConsole()=default;
    80003bac:	00036517          	auipc	a0,0x36
    80003bb0:	1fc50513          	addi	a0,a0,508 # 80039da8 <_ZZN13KernelConsole18getConsoleInstanceEvE8instance>
    80003bb4:	ffffe097          	auipc	ra,0xffffe
    80003bb8:	95c080e7          	jalr	-1700(ra) # 80001510 <_ZN8IOBufferC1Ev>
    80003bbc:	00036517          	auipc	a0,0x36
    80003bc0:	30c50513          	addi	a0,a0,780 # 80039ec8 <_ZZN13KernelConsole18getConsoleInstanceEvE8instance+0x120>
    80003bc4:	ffffe097          	auipc	ra,0xffffe
    80003bc8:	94c080e7          	jalr	-1716(ra) # 80001510 <_ZN8IOBufferC1Ev>
    static KernelConsole instance;
    80003bcc:	00100793          	li	a5,1
    80003bd0:	00036717          	auipc	a4,0x36
    80003bd4:	1cf70823          	sb	a5,464(a4) # 80039da0 <_ZGVZN13KernelConsole18getConsoleInstanceEvE8instance>
}
    80003bd8:	00036517          	auipc	a0,0x36
    80003bdc:	1d050513          	addi	a0,a0,464 # 80039da8 <_ZZN13KernelConsole18getConsoleInstanceEvE8instance>
    80003be0:	00813083          	ld	ra,8(sp)
    80003be4:	00013403          	ld	s0,0(sp)
    80003be8:	01010113          	addi	sp,sp,16
    80003bec:	00008067          	ret

0000000080003bf0 <_ZN13KernelConsole9putCharInEc>:

void KernelConsole::putCharIn(char c) {
    80003bf0:	ff010113          	addi	sp,sp,-16
    80003bf4:	00113423          	sd	ra,8(sp)
    80003bf8:	00813023          	sd	s0,0(sp)
    80003bfc:	01010413          	addi	s0,sp,16
    input.putCharNonBlocking(c);
    80003c00:	ffffe097          	auipc	ra,0xffffe
    80003c04:	a5c080e7          	jalr	-1444(ra) # 8000165c <_ZN8IOBuffer18putCharNonBlockingEc>
}
    80003c08:	00813083          	ld	ra,8(sp)
    80003c0c:	00013403          	ld	s0,0(sp)
    80003c10:	01010113          	addi	sp,sp,16
    80003c14:	00008067          	ret

0000000080003c18 <_ZN13KernelConsole9getCharInEv>:

char KernelConsole::getCharIn() {
    80003c18:	ff010113          	addi	sp,sp,-16
    80003c1c:	00113423          	sd	ra,8(sp)
    80003c20:	00813023          	sd	s0,0(sp)
    80003c24:	01010413          	addi	s0,sp,16
    return input.getChar();
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	b40080e7          	jalr	-1216(ra) # 80001768 <_ZN8IOBuffer7getCharEv>
}
    80003c30:	00813083          	ld	ra,8(sp)
    80003c34:	00013403          	ld	s0,0(sp)
    80003c38:	01010113          	addi	sp,sp,16
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN13KernelConsole10getCharOutEv>:

char KernelConsole::getCharOut() {
    80003c40:	ff010113          	addi	sp,sp,-16
    80003c44:	00113423          	sd	ra,8(sp)
    80003c48:	00813023          	sd	s0,0(sp)
    80003c4c:	01010413          	addi	s0,sp,16
    return output.getChar();
    80003c50:	12050513          	addi	a0,a0,288
    80003c54:	ffffe097          	auipc	ra,0xffffe
    80003c58:	b14080e7          	jalr	-1260(ra) # 80001768 <_ZN8IOBuffer7getCharEv>
}
    80003c5c:	00813083          	ld	ra,8(sp)
    80003c60:	00013403          	ld	s0,0(sp)
    80003c64:	01010113          	addi	sp,sp,16
    80003c68:	00008067          	ret

0000000080003c6c <_ZN13KernelConsole10putCharOutEc>:

void KernelConsole::putCharOut(char c) {
    80003c6c:	ff010113          	addi	sp,sp,-16
    80003c70:	00113423          	sd	ra,8(sp)
    80003c74:	00813023          	sd	s0,0(sp)
    80003c78:	01010413          	addi	s0,sp,16
    output.putChar(c);
    80003c7c:	12050513          	addi	a0,a0,288
    80003c80:	ffffe097          	auipc	ra,0xffffe
    80003c84:	950080e7          	jalr	-1712(ra) # 800015d0 <_ZN8IOBuffer7putCharEc>
}
    80003c88:	00813083          	ld	ra,8(sp)
    80003c8c:	00013403          	ld	s0,0(sp)
    80003c90:	01010113          	addi	sp,sp,16
    80003c94:	00008067          	ret

0000000080003c98 <_ZNK13KernelConsole8itemsOutEv>:

int KernelConsole::itemsOut() const {
    80003c98:	ff010113          	addi	sp,sp,-16
    80003c9c:	00113423          	sd	ra,8(sp)
    80003ca0:	00813023          	sd	s0,0(sp)
    80003ca4:	01010413          	addi	s0,sp,16
    return output.getItems();
    80003ca8:	12050513          	addi	a0,a0,288
    80003cac:	ffffe097          	auipc	ra,0xffffe
    80003cb0:	b3c080e7          	jalr	-1220(ra) # 800017e8 <_ZNK8IOBuffer8getItemsEv>
}
    80003cb4:	00813083          	ld	ra,8(sp)
    80003cb8:	00013403          	ld	s0,0(sp)
    80003cbc:	01010113          	addi	sp,sp,16
    80003cc0:	00008067          	ret

0000000080003cc4 <_ZNK13KernelConsole7slotsInEv>:

int KernelConsole::slotsIn() const {
    80003cc4:	ff010113          	addi	sp,sp,-16
    80003cc8:	00113423          	sd	ra,8(sp)
    80003ccc:	00813023          	sd	s0,0(sp)
    80003cd0:	01010413          	addi	s0,sp,16
    return input.getSlots();
    80003cd4:	ffffe097          	auipc	ra,0xffffe
    80003cd8:	b30080e7          	jalr	-1232(ra) # 80001804 <_ZNK8IOBuffer8getSlotsEv>
}
    80003cdc:	00813083          	ld	ra,8(sp)
    80003ce0:	00013403          	ld	s0,0(sp)
    80003ce4:	01010113          	addi	sp,sp,16
    80003ce8:	00008067          	ret

0000000080003cec <_ZN13KernelConsole5flushEv>:

void KernelConsole::flush() {
    80003cec:	fe010113          	addi	sp,sp,-32
    80003cf0:	00113c23          	sd	ra,24(sp)
    80003cf4:	00813823          	sd	s0,16(sp)
    80003cf8:	00913423          	sd	s1,8(sp)
    80003cfc:	02010413          	addi	s0,sp,32
    KernelConsole& console=KernelConsole::getConsoleInstance();
    80003d00:	00000097          	auipc	ra,0x0
    80003d04:	e84080e7          	jalr	-380(ra) # 80003b84 <_ZN13KernelConsole18getConsoleInstanceEv>
    80003d08:	00050493          	mv	s1,a0
    while(console.itemsOut()){
    80003d0c:	00048513          	mv	a0,s1
    80003d10:	00000097          	auipc	ra,0x0
    80003d14:	f88080e7          	jalr	-120(ra) # 80003c98 <_ZNK13KernelConsole8itemsOutEv>
    80003d18:	02050e63          	beqz	a0,80003d54 <_ZN13KernelConsole5flushEv+0x68>
        if((*((char*)CONSOLE_STATUS)&CONSOLE_TX_STATUS_BIT)){
    80003d1c:	00009797          	auipc	a5,0x9
    80003d20:	7747b783          	ld	a5,1908(a5) # 8000d490 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003d24:	0007b783          	ld	a5,0(a5)
    80003d28:	0007c783          	lbu	a5,0(a5)
    80003d2c:	0207f793          	andi	a5,a5,32
    80003d30:	fc078ee3          	beqz	a5,80003d0c <_ZN13KernelConsole5flushEv+0x20>
            char c=console.getCharOut();
    80003d34:	00048513          	mv	a0,s1
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	f08080e7          	jalr	-248(ra) # 80003c40 <_ZN13KernelConsole10getCharOutEv>
            *((char*)(CONSOLE_RX_DATA))=c;
    80003d40:	00009797          	auipc	a5,0x9
    80003d44:	7487b783          	ld	a5,1864(a5) # 8000d488 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003d48:	0007b783          	ld	a5,0(a5)
    80003d4c:	00a78023          	sb	a0,0(a5)
    80003d50:	fbdff06f          	j	80003d0c <_ZN13KernelConsole5flushEv+0x20>
        }
    }
    80003d54:	01813083          	ld	ra,24(sp)
    80003d58:	01013403          	ld	s0,16(sp)
    80003d5c:	00813483          	ld	s1,8(sp)
    80003d60:	02010113          	addi	sp,sp,32
    80003d64:	00008067          	ret

0000000080003d68 <_ZN12BlockedQueue3putEP3TCB>:
#include "../h/BlockedQueue.hpp"
#include "../h/TCB.hpp"
void BlockedQueue::put(TCB * t) {
    80003d68:	ff010113          	addi	sp,sp,-16
    80003d6c:	00813423          	sd	s0,8(sp)
    80003d70:	01010413          	addi	s0,sp,16
    if(!head){
    80003d74:	00053783          	ld	a5,0(a0)
    80003d78:	02078863          	beqz	a5,80003da8 <_ZN12BlockedQueue3putEP3TCB+0x40>
        head=tail=t;
        cnt++;
        return;
    }
    tail->nextBlocked=t;
    80003d7c:	00853783          	ld	a5,8(a0)
    80003d80:	04b7bc23          	sd	a1,88(a5)
    t->prevBlocked=tail;
    80003d84:	00853783          	ld	a5,8(a0)
    80003d88:	06f5b023          	sd	a5,96(a1)
    tail=t;
    80003d8c:	00b53423          	sd	a1,8(a0)
    cnt++;
    80003d90:	01052783          	lw	a5,16(a0)
    80003d94:	0017879b          	addiw	a5,a5,1
    80003d98:	00f52823          	sw	a5,16(a0)
}
    80003d9c:	00813403          	ld	s0,8(sp)
    80003da0:	01010113          	addi	sp,sp,16
    80003da4:	00008067          	ret
        head=tail=t;
    80003da8:	00b53423          	sd	a1,8(a0)
    80003dac:	00b53023          	sd	a1,0(a0)
        cnt++;
    80003db0:	01052783          	lw	a5,16(a0)
    80003db4:	0017879b          	addiw	a5,a5,1
    80003db8:	00f52823          	sw	a5,16(a0)
        return;
    80003dbc:	fe1ff06f          	j	80003d9c <_ZN12BlockedQueue3putEP3TCB+0x34>

0000000080003dc0 <_ZN12BlockedQueue3getEv>:
TCB *BlockedQueue::get() {
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00813423          	sd	s0,8(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    80003dcc:	00050793          	mv	a5,a0
    if(!head) return nullptr;
    80003dd0:	00053503          	ld	a0,0(a0)
    80003dd4:	02050463          	beqz	a0,80003dfc <_ZN12BlockedQueue3getEv+0x3c>
    TCB* t=head;
    head=head->nextBlocked;
    80003dd8:	05853703          	ld	a4,88(a0)
    80003ddc:	00e7b023          	sd	a4,0(a5)
    if(head){
    80003de0:	00070463          	beqz	a4,80003de8 <_ZN12BlockedQueue3getEv+0x28>
        head->prevBlocked= nullptr;
    80003de4:	06073023          	sd	zero,96(a4)
    }
    t->nextBlocked=nullptr;
    80003de8:	04053c23          	sd	zero,88(a0)
    t->prevBlocked= nullptr;
    80003dec:	06053023          	sd	zero,96(a0)
    cnt--;
    80003df0:	0107a703          	lw	a4,16(a5)
    80003df4:	fff7071b          	addiw	a4,a4,-1
    80003df8:	00e7a823          	sw	a4,16(a5)
    return t;
}
    80003dfc:	00813403          	ld	s0,8(sp)
    80003e00:	01010113          	addi	sp,sp,16
    80003e04:	00008067          	ret

0000000080003e08 <_ZN12BlockedQueue12removeAwokenEP3TCB>:

void BlockedQueue::removeAwoken(TCB *thr) {
    80003e08:	ff010113          	addi	sp,sp,-16
    80003e0c:	00813423          	sd	s0,8(sp)
    80003e10:	01010413          	addi	s0,sp,16
    if(thr->prevBlocked) {
    80003e14:	0605b783          	ld	a5,96(a1)
    80003e18:	02078e63          	beqz	a5,80003e54 <_ZN12BlockedQueue12removeAwokenEP3TCB+0x4c>
        thr->prevBlocked->nextBlocked = thr->nextBlocked;
    80003e1c:	0585b703          	ld	a4,88(a1)
    80003e20:	04e7bc23          	sd	a4,88(a5)
    }
    else{
        head=thr->nextBlocked;
    }
    if(thr->nextBlocked){
    80003e24:	0585b783          	ld	a5,88(a1)
    80003e28:	02078c63          	beqz	a5,80003e60 <_ZN12BlockedQueue12removeAwokenEP3TCB+0x58>
        thr->nextBlocked->prevBlocked=thr->prevBlocked;
    80003e2c:	0605b703          	ld	a4,96(a1)
    80003e30:	06e7b023          	sd	a4,96(a5)
    }
    else{
        tail=thr->prevBlocked;
    }
    thr->prevBlocked=thr->nextBlocked=nullptr;
    80003e34:	0405bc23          	sd	zero,88(a1)
    80003e38:	0605b023          	sd	zero,96(a1)
    cnt--;
    80003e3c:	01052783          	lw	a5,16(a0)
    80003e40:	fff7879b          	addiw	a5,a5,-1
    80003e44:	00f52823          	sw	a5,16(a0)
}
    80003e48:	00813403          	ld	s0,8(sp)
    80003e4c:	01010113          	addi	sp,sp,16
    80003e50:	00008067          	ret
        head=thr->nextBlocked;
    80003e54:	0585b783          	ld	a5,88(a1)
    80003e58:	00f53023          	sd	a5,0(a0)
    80003e5c:	fc9ff06f          	j	80003e24 <_ZN12BlockedQueue12removeAwokenEP3TCB+0x1c>
        tail=thr->prevBlocked;
    80003e60:	0605b783          	ld	a5,96(a1)
    80003e64:	00f53423          	sd	a5,8(a0)
    80003e68:	fcdff06f          	j	80003e34 <_ZN12BlockedQueue12removeAwokenEP3TCB+0x2c>

0000000080003e6c <_ZNK12BlockedQueue15getNumOfBlockedEv>:
int BlockedQueue::getNumOfBlocked() const {
    80003e6c:	ff010113          	addi	sp,sp,-16
    80003e70:	00813423          	sd	s0,8(sp)
    80003e74:	01010413          	addi	s0,sp,16
    return cnt;
    80003e78:	01052503          	lw	a0,16(a0)
    80003e7c:	00813403          	ld	s0,8(sp)
    80003e80:	01010113          	addi	sp,sp,16
    80003e84:	00008067          	ret

0000000080003e88 <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80003e88:	fe010113          	addi	sp,sp,-32
    80003e8c:	00113c23          	sd	ra,24(sp)
    80003e90:	00813823          	sd	s0,16(sp)
    80003e94:	00913423          	sd	s1,8(sp)
    80003e98:	01213023          	sd	s2,0(sp)
    80003e9c:	02010413          	addi	s0,sp,32
    80003ea0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003ea4:	00000913          	li	s2,0
    80003ea8:	00c0006f          	j	80003eb4 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003eac:	ffffd097          	auipc	ra,0xffffd
    80003eb0:	3e8080e7          	jalr	1000(ra) # 80001294 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80003eb4:	ffffd097          	auipc	ra,0xffffd
    80003eb8:	5e0080e7          	jalr	1504(ra) # 80001494 <_Z4getcv>
    80003ebc:	0005059b          	sext.w	a1,a0
    80003ec0:	01b00793          	li	a5,27
    80003ec4:	02f58a63          	beq	a1,a5,80003ef8 <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80003ec8:	0084b503          	ld	a0,8(s1)
    80003ecc:	00003097          	auipc	ra,0x3
    80003ed0:	454080e7          	jalr	1108(ra) # 80007320 <_ZN6Buffer3putEi>
        i++;
    80003ed4:	0019071b          	addiw	a4,s2,1
    80003ed8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003edc:	0004a683          	lw	a3,0(s1)
    80003ee0:	0026979b          	slliw	a5,a3,0x2
    80003ee4:	00d787bb          	addw	a5,a5,a3
    80003ee8:	0017979b          	slliw	a5,a5,0x1
    80003eec:	02f767bb          	remw	a5,a4,a5
    80003ef0:	fc0792e3          	bnez	a5,80003eb4 <_ZL16producerKeyboardPv+0x2c>
    80003ef4:	fb9ff06f          	j	80003eac <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80003ef8:	00100793          	li	a5,1
    80003efc:	00036717          	auipc	a4,0x36
    80003f00:	0ef72623          	sw	a5,236(a4) # 80039fe8 <_ZL9threadEnd>
    data->buffer->put('!');
    80003f04:	02100593          	li	a1,33
    80003f08:	0084b503          	ld	a0,8(s1)
    80003f0c:	00003097          	auipc	ra,0x3
    80003f10:	414080e7          	jalr	1044(ra) # 80007320 <_ZN6Buffer3putEi>
    sem_signal(data->wait);
    80003f14:	0104b503          	ld	a0,16(s1)
    80003f18:	ffffd097          	auipc	ra,0xffffd
    80003f1c:	47c080e7          	jalr	1148(ra) # 80001394 <_Z10sem_signalP4SemC>
}
    80003f20:	01813083          	ld	ra,24(sp)
    80003f24:	01013403          	ld	s0,16(sp)
    80003f28:	00813483          	ld	s1,8(sp)
    80003f2c:	00013903          	ld	s2,0(sp)
    80003f30:	02010113          	addi	sp,sp,32
    80003f34:	00008067          	ret

0000000080003f38 <_ZL8producerPv>:

static void producer(void *arg) {
    80003f38:	fe010113          	addi	sp,sp,-32
    80003f3c:	00113c23          	sd	ra,24(sp)
    80003f40:	00813823          	sd	s0,16(sp)
    80003f44:	00913423          	sd	s1,8(sp)
    80003f48:	01213023          	sd	s2,0(sp)
    80003f4c:	02010413          	addi	s0,sp,32
    80003f50:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003f54:	00000913          	li	s2,0
    80003f58:	00c0006f          	j	80003f64 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80003f5c:	ffffd097          	auipc	ra,0xffffd
    80003f60:	338080e7          	jalr	824(ra) # 80001294 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80003f64:	00036797          	auipc	a5,0x36
    80003f68:	0847a783          	lw	a5,132(a5) # 80039fe8 <_ZL9threadEnd>
    80003f6c:	02079e63          	bnez	a5,80003fa8 <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80003f70:	0004a583          	lw	a1,0(s1)
    80003f74:	0305859b          	addiw	a1,a1,48
    80003f78:	0084b503          	ld	a0,8(s1)
    80003f7c:	00003097          	auipc	ra,0x3
    80003f80:	3a4080e7          	jalr	932(ra) # 80007320 <_ZN6Buffer3putEi>
        i++;
    80003f84:	0019071b          	addiw	a4,s2,1
    80003f88:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003f8c:	0004a683          	lw	a3,0(s1)
    80003f90:	0026979b          	slliw	a5,a3,0x2
    80003f94:	00d787bb          	addw	a5,a5,a3
    80003f98:	0017979b          	slliw	a5,a5,0x1
    80003f9c:	02f767bb          	remw	a5,a4,a5
    80003fa0:	fc0792e3          	bnez	a5,80003f64 <_ZL8producerPv+0x2c>
    80003fa4:	fb9ff06f          	j	80003f5c <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80003fa8:	0104b503          	ld	a0,16(s1)
    80003fac:	ffffd097          	auipc	ra,0xffffd
    80003fb0:	3e8080e7          	jalr	1000(ra) # 80001394 <_Z10sem_signalP4SemC>
}
    80003fb4:	01813083          	ld	ra,24(sp)
    80003fb8:	01013403          	ld	s0,16(sp)
    80003fbc:	00813483          	ld	s1,8(sp)
    80003fc0:	00013903          	ld	s2,0(sp)
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00008067          	ret

0000000080003fcc <_ZL8consumerPv>:

static void consumer(void *arg) {
    80003fcc:	fd010113          	addi	sp,sp,-48
    80003fd0:	02113423          	sd	ra,40(sp)
    80003fd4:	02813023          	sd	s0,32(sp)
    80003fd8:	00913c23          	sd	s1,24(sp)
    80003fdc:	01213823          	sd	s2,16(sp)
    80003fe0:	01313423          	sd	s3,8(sp)
    80003fe4:	03010413          	addi	s0,sp,48
    80003fe8:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003fec:	00000993          	li	s3,0
    80003ff0:	01c0006f          	j	8000400c <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80003ff4:	ffffd097          	auipc	ra,0xffffd
    80003ff8:	2a0080e7          	jalr	672(ra) # 80001294 <_Z15thread_dispatchv>
    80003ffc:	0500006f          	j	8000404c <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004000:	00a00513          	li	a0,10
    80004004:	ffffd097          	auipc	ra,0xffffd
    80004008:	4d0080e7          	jalr	1232(ra) # 800014d4 <_Z4putcc>
    while (!threadEnd) {
    8000400c:	00036797          	auipc	a5,0x36
    80004010:	fdc7a783          	lw	a5,-36(a5) # 80039fe8 <_ZL9threadEnd>
    80004014:	06079063          	bnez	a5,80004074 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80004018:	00893503          	ld	a0,8(s2)
    8000401c:	00003097          	auipc	ra,0x3
    80004020:	394080e7          	jalr	916(ra) # 800073b0 <_ZN6Buffer3getEv>
        i++;
    80004024:	0019849b          	addiw	s1,s3,1
    80004028:	0004899b          	sext.w	s3,s1
        putc(key);
    8000402c:	0ff57513          	andi	a0,a0,255
    80004030:	ffffd097          	auipc	ra,0xffffd
    80004034:	4a4080e7          	jalr	1188(ra) # 800014d4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004038:	00092703          	lw	a4,0(s2)
    8000403c:	0027179b          	slliw	a5,a4,0x2
    80004040:	00e787bb          	addw	a5,a5,a4
    80004044:	02f4e7bb          	remw	a5,s1,a5
    80004048:	fa0786e3          	beqz	a5,80003ff4 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    8000404c:	05000793          	li	a5,80
    80004050:	02f4e4bb          	remw	s1,s1,a5
    80004054:	fa049ce3          	bnez	s1,8000400c <_ZL8consumerPv+0x40>
    80004058:	fa9ff06f          	j	80004000 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    8000405c:	00893503          	ld	a0,8(s2)
    80004060:	00003097          	auipc	ra,0x3
    80004064:	350080e7          	jalr	848(ra) # 800073b0 <_ZN6Buffer3getEv>
        putc(key);
    80004068:	0ff57513          	andi	a0,a0,255
    8000406c:	ffffd097          	auipc	ra,0xffffd
    80004070:	468080e7          	jalr	1128(ra) # 800014d4 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80004074:	00893503          	ld	a0,8(s2)
    80004078:	00003097          	auipc	ra,0x3
    8000407c:	3c4080e7          	jalr	964(ra) # 8000743c <_ZN6Buffer6getCntEv>
    80004080:	fca04ee3          	bgtz	a0,8000405c <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80004084:	01093503          	ld	a0,16(s2)
    80004088:	ffffd097          	auipc	ra,0xffffd
    8000408c:	30c080e7          	jalr	780(ra) # 80001394 <_Z10sem_signalP4SemC>
}
    80004090:	02813083          	ld	ra,40(sp)
    80004094:	02013403          	ld	s0,32(sp)
    80004098:	01813483          	ld	s1,24(sp)
    8000409c:	01013903          	ld	s2,16(sp)
    800040a0:	00813983          	ld	s3,8(sp)
    800040a4:	03010113          	addi	sp,sp,48
    800040a8:	00008067          	ret

00000000800040ac <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800040ac:	f9010113          	addi	sp,sp,-112
    800040b0:	06113423          	sd	ra,104(sp)
    800040b4:	06813023          	sd	s0,96(sp)
    800040b8:	04913c23          	sd	s1,88(sp)
    800040bc:	05213823          	sd	s2,80(sp)
    800040c0:	05313423          	sd	s3,72(sp)
    800040c4:	05413023          	sd	s4,64(sp)
    800040c8:	03513c23          	sd	s5,56(sp)
    800040cc:	03613823          	sd	s6,48(sp)
    800040d0:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    800040d4:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    800040d8:	00006517          	auipc	a0,0x6
    800040dc:	31050513          	addi	a0,a0,784 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    800040e0:	00002097          	auipc	ra,0x2
    800040e4:	220080e7          	jalr	544(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    800040e8:	01e00593          	li	a1,30
    800040ec:	fa040493          	addi	s1,s0,-96
    800040f0:	00048513          	mv	a0,s1
    800040f4:	00002097          	auipc	ra,0x2
    800040f8:	294080e7          	jalr	660(ra) # 80006388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800040fc:	00048513          	mv	a0,s1
    80004100:	00002097          	auipc	ra,0x2
    80004104:	360080e7          	jalr	864(ra) # 80006460 <_Z11stringToIntPKc>
    80004108:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000410c:	00006517          	auipc	a0,0x6
    80004110:	2fc50513          	addi	a0,a0,764 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80004114:	00002097          	auipc	ra,0x2
    80004118:	1ec080e7          	jalr	492(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    8000411c:	01e00593          	li	a1,30
    80004120:	00048513          	mv	a0,s1
    80004124:	00002097          	auipc	ra,0x2
    80004128:	264080e7          	jalr	612(ra) # 80006388 <_Z9getStringPci>
    n = stringToInt(input);
    8000412c:	00048513          	mv	a0,s1
    80004130:	00002097          	auipc	ra,0x2
    80004134:	330080e7          	jalr	816(ra) # 80006460 <_Z11stringToIntPKc>
    80004138:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000413c:	00006517          	auipc	a0,0x6
    80004140:	2ec50513          	addi	a0,a0,748 # 8000a428 <CONSOLE_STATUS+0x418>
    80004144:	00002097          	auipc	ra,0x2
    80004148:	1bc080e7          	jalr	444(ra) # 80006300 <_Z11printStringPKc>
    8000414c:	00000613          	li	a2,0
    80004150:	00a00593          	li	a1,10
    80004154:	00090513          	mv	a0,s2
    80004158:	00002097          	auipc	ra,0x2
    8000415c:	358080e7          	jalr	856(ra) # 800064b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004160:	00006517          	auipc	a0,0x6
    80004164:	2e050513          	addi	a0,a0,736 # 8000a440 <CONSOLE_STATUS+0x430>
    80004168:	00002097          	auipc	ra,0x2
    8000416c:	198080e7          	jalr	408(ra) # 80006300 <_Z11printStringPKc>
    80004170:	00000613          	li	a2,0
    80004174:	00a00593          	li	a1,10
    80004178:	00048513          	mv	a0,s1
    8000417c:	00002097          	auipc	ra,0x2
    80004180:	334080e7          	jalr	820(ra) # 800064b0 <_Z8printIntiii>
    printString(".\n");
    80004184:	00006517          	auipc	a0,0x6
    80004188:	2d450513          	addi	a0,a0,724 # 8000a458 <CONSOLE_STATUS+0x448>
    8000418c:	00002097          	auipc	ra,0x2
    80004190:	174080e7          	jalr	372(ra) # 80006300 <_Z11printStringPKc>
    if(threadNum > n) {
    80004194:	0324c463          	blt	s1,s2,800041bc <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80004198:	03205c63          	blez	s2,800041d0 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    8000419c:	03800513          	li	a0,56
    800041a0:	ffffe097          	auipc	ra,0xffffe
    800041a4:	500080e7          	jalr	1280(ra) # 800026a0 <_Znwm>
    800041a8:	00050a13          	mv	s4,a0
    800041ac:	00048593          	mv	a1,s1
    800041b0:	00003097          	auipc	ra,0x3
    800041b4:	0d4080e7          	jalr	212(ra) # 80007284 <_ZN6BufferC1Ei>
    800041b8:	0300006f          	j	800041e8 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    800041bc:	00006517          	auipc	a0,0x6
    800041c0:	2a450513          	addi	a0,a0,676 # 8000a460 <CONSOLE_STATUS+0x450>
    800041c4:	00002097          	auipc	ra,0x2
    800041c8:	13c080e7          	jalr	316(ra) # 80006300 <_Z11printStringPKc>
        return;
    800041cc:	0140006f          	j	800041e0 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    800041d0:	00006517          	auipc	a0,0x6
    800041d4:	2d050513          	addi	a0,a0,720 # 8000a4a0 <CONSOLE_STATUS+0x490>
    800041d8:	00002097          	auipc	ra,0x2
    800041dc:	128080e7          	jalr	296(ra) # 80006300 <_Z11printStringPKc>
        return;
    800041e0:	000b0113          	mv	sp,s6
    800041e4:	1500006f          	j	80004334 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    800041e8:	00000593          	li	a1,0
    800041ec:	00036517          	auipc	a0,0x36
    800041f0:	e0450513          	addi	a0,a0,-508 # 80039ff0 <_ZL10waitForAll>
    800041f4:	ffffd097          	auipc	ra,0xffffd
    800041f8:	0dc080e7          	jalr	220(ra) # 800012d0 <_Z8sem_openPP4SemCj>
    thread_t threads[threadNum];
    800041fc:	00391793          	slli	a5,s2,0x3
    80004200:	00f78793          	addi	a5,a5,15
    80004204:	ff07f793          	andi	a5,a5,-16
    80004208:	40f10133          	sub	sp,sp,a5
    8000420c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80004210:	0019071b          	addiw	a4,s2,1
    80004214:	00171793          	slli	a5,a4,0x1
    80004218:	00e787b3          	add	a5,a5,a4
    8000421c:	00379793          	slli	a5,a5,0x3
    80004220:	00f78793          	addi	a5,a5,15
    80004224:	ff07f793          	andi	a5,a5,-16
    80004228:	40f10133          	sub	sp,sp,a5
    8000422c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80004230:	00191613          	slli	a2,s2,0x1
    80004234:	012607b3          	add	a5,a2,s2
    80004238:	00379793          	slli	a5,a5,0x3
    8000423c:	00f987b3          	add	a5,s3,a5
    80004240:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004244:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80004248:	00036717          	auipc	a4,0x36
    8000424c:	da873703          	ld	a4,-600(a4) # 80039ff0 <_ZL10waitForAll>
    80004250:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80004254:	00078613          	mv	a2,a5
    80004258:	00000597          	auipc	a1,0x0
    8000425c:	d7458593          	addi	a1,a1,-652 # 80003fcc <_ZL8consumerPv>
    80004260:	f9840513          	addi	a0,s0,-104
    80004264:	ffffd097          	auipc	ra,0xffffd
    80004268:	f80080e7          	jalr	-128(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    8000426c:	00000493          	li	s1,0
    80004270:	0280006f          	j	80004298 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80004274:	00000597          	auipc	a1,0x0
    80004278:	c1458593          	addi	a1,a1,-1004 # 80003e88 <_ZL16producerKeyboardPv>
                      data + i);
    8000427c:	00179613          	slli	a2,a5,0x1
    80004280:	00f60633          	add	a2,a2,a5
    80004284:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80004288:	00c98633          	add	a2,s3,a2
    8000428c:	ffffd097          	auipc	ra,0xffffd
    80004290:	f58080e7          	jalr	-168(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80004294:	0014849b          	addiw	s1,s1,1
    80004298:	0524d263          	bge	s1,s2,800042dc <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    8000429c:	00149793          	slli	a5,s1,0x1
    800042a0:	009787b3          	add	a5,a5,s1
    800042a4:	00379793          	slli	a5,a5,0x3
    800042a8:	00f987b3          	add	a5,s3,a5
    800042ac:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800042b0:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800042b4:	00036717          	auipc	a4,0x36
    800042b8:	d3c73703          	ld	a4,-708(a4) # 80039ff0 <_ZL10waitForAll>
    800042bc:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    800042c0:	00048793          	mv	a5,s1
    800042c4:	00349513          	slli	a0,s1,0x3
    800042c8:	00aa8533          	add	a0,s5,a0
    800042cc:	fa9054e3          	blez	s1,80004274 <_Z22producerConsumer_C_APIv+0x1c8>
    800042d0:	00000597          	auipc	a1,0x0
    800042d4:	c6858593          	addi	a1,a1,-920 # 80003f38 <_ZL8producerPv>
    800042d8:	fa5ff06f          	j	8000427c <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    800042dc:	ffffd097          	auipc	ra,0xffffd
    800042e0:	fb8080e7          	jalr	-72(ra) # 80001294 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    800042e4:	00000493          	li	s1,0
    800042e8:	00994e63          	blt	s2,s1,80004304 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    800042ec:	00036517          	auipc	a0,0x36
    800042f0:	d0453503          	ld	a0,-764(a0) # 80039ff0 <_ZL10waitForAll>
    800042f4:	ffffd097          	auipc	ra,0xffffd
    800042f8:	060080e7          	jalr	96(ra) # 80001354 <_Z8sem_waitP4SemC>
    for (int i = 0; i <= threadNum; i++) {
    800042fc:	0014849b          	addiw	s1,s1,1
    80004300:	fe9ff06f          	j	800042e8 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80004304:	00036517          	auipc	a0,0x36
    80004308:	cec53503          	ld	a0,-788(a0) # 80039ff0 <_ZL10waitForAll>
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	008080e7          	jalr	8(ra) # 80001314 <_Z9sem_closeP4SemC>
    delete buffer;
    80004314:	000a0e63          	beqz	s4,80004330 <_Z22producerConsumer_C_APIv+0x284>
    80004318:	000a0513          	mv	a0,s4
    8000431c:	00003097          	auipc	ra,0x3
    80004320:	1a8080e7          	jalr	424(ra) # 800074c4 <_ZN6BufferD1Ev>
    80004324:	000a0513          	mv	a0,s4
    80004328:	ffffe097          	auipc	ra,0xffffe
    8000432c:	3a0080e7          	jalr	928(ra) # 800026c8 <_ZdlPv>
    80004330:	000b0113          	mv	sp,s6

    80004334:	f9040113          	addi	sp,s0,-112
    80004338:	06813083          	ld	ra,104(sp)
    8000433c:	06013403          	ld	s0,96(sp)
    80004340:	05813483          	ld	s1,88(sp)
    80004344:	05013903          	ld	s2,80(sp)
    80004348:	04813983          	ld	s3,72(sp)
    8000434c:	04013a03          	ld	s4,64(sp)
    80004350:	03813a83          	ld	s5,56(sp)
    80004354:	03013b03          	ld	s6,48(sp)
    80004358:	07010113          	addi	sp,sp,112
    8000435c:	00008067          	ret
    80004360:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80004364:	000a0513          	mv	a0,s4
    80004368:	ffffe097          	auipc	ra,0xffffe
    8000436c:	360080e7          	jalr	864(ra) # 800026c8 <_ZdlPv>
    80004370:	00048513          	mv	a0,s1
    80004374:	00037097          	auipc	ra,0x37
    80004378:	d94080e7          	jalr	-620(ra) # 8003b108 <_Unwind_Resume>

000000008000437c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000437c:	fe010113          	addi	sp,sp,-32
    80004380:	00113c23          	sd	ra,24(sp)
    80004384:	00813823          	sd	s0,16(sp)
    80004388:	00913423          	sd	s1,8(sp)
    8000438c:	01213023          	sd	s2,0(sp)
    80004390:	02010413          	addi	s0,sp,32
    80004394:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004398:	00100793          	li	a5,1
    8000439c:	02a7f863          	bgeu	a5,a0,800043cc <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800043a0:	00a00793          	li	a5,10
    800043a4:	02f577b3          	remu	a5,a0,a5
    800043a8:	02078e63          	beqz	a5,800043e4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800043ac:	fff48513          	addi	a0,s1,-1
    800043b0:	00000097          	auipc	ra,0x0
    800043b4:	fcc080e7          	jalr	-52(ra) # 8000437c <_ZL9fibonaccim>
    800043b8:	00050913          	mv	s2,a0
    800043bc:	ffe48513          	addi	a0,s1,-2
    800043c0:	00000097          	auipc	ra,0x0
    800043c4:	fbc080e7          	jalr	-68(ra) # 8000437c <_ZL9fibonaccim>
    800043c8:	00a90533          	add	a0,s2,a0
}
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	00813483          	ld	s1,8(sp)
    800043d8:	00013903          	ld	s2,0(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800043e4:	ffffd097          	auipc	ra,0xffffd
    800043e8:	eb0080e7          	jalr	-336(ra) # 80001294 <_Z15thread_dispatchv>
    800043ec:	fc1ff06f          	j	800043ac <_ZL9fibonaccim+0x30>

00000000800043f0 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    800043f0:	fe010113          	addi	sp,sp,-32
    800043f4:	00113c23          	sd	ra,24(sp)
    800043f8:	00813823          	sd	s0,16(sp)
    800043fc:	00913423          	sd	s1,8(sp)
    80004400:	01213023          	sd	s2,0(sp)
    80004404:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004408:	00000913          	li	s2,0
    8000440c:	0380006f          	j	80004444 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80004410:	ffffd097          	auipc	ra,0xffffd
    80004414:	e84080e7          	jalr	-380(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004418:	00148493          	addi	s1,s1,1
    8000441c:	000027b7          	lui	a5,0x2
    80004420:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004424:	0097ee63          	bltu	a5,s1,80004440 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004428:	00000713          	li	a4,0
    8000442c:	000077b7          	lui	a5,0x7
    80004430:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004434:	fce7eee3          	bltu	a5,a4,80004410 <_ZN7WorkerA11workerBodyAEPv+0x20>
    80004438:	00170713          	addi	a4,a4,1
    8000443c:	ff1ff06f          	j	8000442c <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004440:	00190913          	addi	s2,s2,1
    80004444:	00900793          	li	a5,9
    80004448:	0527e063          	bltu	a5,s2,80004488 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    8000444c:	00006517          	auipc	a0,0x6
    80004450:	08450513          	addi	a0,a0,132 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80004454:	00002097          	auipc	ra,0x2
    80004458:	eac080e7          	jalr	-340(ra) # 80006300 <_Z11printStringPKc>
    8000445c:	00000613          	li	a2,0
    80004460:	00a00593          	li	a1,10
    80004464:	0009051b          	sext.w	a0,s2
    80004468:	00002097          	auipc	ra,0x2
    8000446c:	048080e7          	jalr	72(ra) # 800064b0 <_Z8printIntiii>
    80004470:	00006517          	auipc	a0,0x6
    80004474:	d1050513          	addi	a0,a0,-752 # 8000a180 <CONSOLE_STATUS+0x170>
    80004478:	00002097          	auipc	ra,0x2
    8000447c:	e88080e7          	jalr	-376(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004480:	00000493          	li	s1,0
    80004484:	f99ff06f          	j	8000441c <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80004488:	00006517          	auipc	a0,0x6
    8000448c:	05050513          	addi	a0,a0,80 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80004490:	00002097          	auipc	ra,0x2
    80004494:	e70080e7          	jalr	-400(ra) # 80006300 <_Z11printStringPKc>
    finishedA = true;
    80004498:	00100793          	li	a5,1
    8000449c:	00036717          	auipc	a4,0x36
    800044a0:	b4f70e23          	sb	a5,-1188(a4) # 80039ff8 <_ZL9finishedA>
}
    800044a4:	01813083          	ld	ra,24(sp)
    800044a8:	01013403          	ld	s0,16(sp)
    800044ac:	00813483          	ld	s1,8(sp)
    800044b0:	00013903          	ld	s2,0(sp)
    800044b4:	02010113          	addi	sp,sp,32
    800044b8:	00008067          	ret

00000000800044bc <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800044bc:	fe010113          	addi	sp,sp,-32
    800044c0:	00113c23          	sd	ra,24(sp)
    800044c4:	00813823          	sd	s0,16(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	01213023          	sd	s2,0(sp)
    800044d0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800044d4:	00000913          	li	s2,0
    800044d8:	0380006f          	j	80004510 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800044dc:	ffffd097          	auipc	ra,0xffffd
    800044e0:	db8080e7          	jalr	-584(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800044e4:	00148493          	addi	s1,s1,1
    800044e8:	000027b7          	lui	a5,0x2
    800044ec:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800044f0:	0097ee63          	bltu	a5,s1,8000450c <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800044f4:	00000713          	li	a4,0
    800044f8:	000077b7          	lui	a5,0x7
    800044fc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004500:	fce7eee3          	bltu	a5,a4,800044dc <_ZN7WorkerB11workerBodyBEPv+0x20>
    80004504:	00170713          	addi	a4,a4,1
    80004508:	ff1ff06f          	j	800044f8 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    8000450c:	00190913          	addi	s2,s2,1
    80004510:	00f00793          	li	a5,15
    80004514:	0527e063          	bltu	a5,s2,80004554 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80004518:	00006517          	auipc	a0,0x6
    8000451c:	fd050513          	addi	a0,a0,-48 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80004520:	00002097          	auipc	ra,0x2
    80004524:	de0080e7          	jalr	-544(ra) # 80006300 <_Z11printStringPKc>
    80004528:	00000613          	li	a2,0
    8000452c:	00a00593          	li	a1,10
    80004530:	0009051b          	sext.w	a0,s2
    80004534:	00002097          	auipc	ra,0x2
    80004538:	f7c080e7          	jalr	-132(ra) # 800064b0 <_Z8printIntiii>
    8000453c:	00006517          	auipc	a0,0x6
    80004540:	c4450513          	addi	a0,a0,-956 # 8000a180 <CONSOLE_STATUS+0x170>
    80004544:	00002097          	auipc	ra,0x2
    80004548:	dbc080e7          	jalr	-580(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000454c:	00000493          	li	s1,0
    80004550:	f99ff06f          	j	800044e8 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80004554:	00006517          	auipc	a0,0x6
    80004558:	f9c50513          	addi	a0,a0,-100 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    8000455c:	00002097          	auipc	ra,0x2
    80004560:	da4080e7          	jalr	-604(ra) # 80006300 <_Z11printStringPKc>
    finishedB = true;
    80004564:	00100793          	li	a5,1
    80004568:	00036717          	auipc	a4,0x36
    8000456c:	a8f708a3          	sb	a5,-1391(a4) # 80039ff9 <_ZL9finishedB>
    thread_dispatch();
    80004570:	ffffd097          	auipc	ra,0xffffd
    80004574:	d24080e7          	jalr	-732(ra) # 80001294 <_Z15thread_dispatchv>
}
    80004578:	01813083          	ld	ra,24(sp)
    8000457c:	01013403          	ld	s0,16(sp)
    80004580:	00813483          	ld	s1,8(sp)
    80004584:	00013903          	ld	s2,0(sp)
    80004588:	02010113          	addi	sp,sp,32
    8000458c:	00008067          	ret

0000000080004590 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80004590:	fe010113          	addi	sp,sp,-32
    80004594:	00113c23          	sd	ra,24(sp)
    80004598:	00813823          	sd	s0,16(sp)
    8000459c:	00913423          	sd	s1,8(sp)
    800045a0:	01213023          	sd	s2,0(sp)
    800045a4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045a8:	00000493          	li	s1,0
    800045ac:	0400006f          	j	800045ec <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800045b0:	00006517          	auipc	a0,0x6
    800045b4:	f5050513          	addi	a0,a0,-176 # 8000a500 <CONSOLE_STATUS+0x4f0>
    800045b8:	00002097          	auipc	ra,0x2
    800045bc:	d48080e7          	jalr	-696(ra) # 80006300 <_Z11printStringPKc>
    800045c0:	00000613          	li	a2,0
    800045c4:	00a00593          	li	a1,10
    800045c8:	00048513          	mv	a0,s1
    800045cc:	00002097          	auipc	ra,0x2
    800045d0:	ee4080e7          	jalr	-284(ra) # 800064b0 <_Z8printIntiii>
    800045d4:	00006517          	auipc	a0,0x6
    800045d8:	bac50513          	addi	a0,a0,-1108 # 8000a180 <CONSOLE_STATUS+0x170>
    800045dc:	00002097          	auipc	ra,0x2
    800045e0:	d24080e7          	jalr	-732(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800045e4:	0014849b          	addiw	s1,s1,1
    800045e8:	0ff4f493          	andi	s1,s1,255
    800045ec:	00200793          	li	a5,2
    800045f0:	fc97f0e3          	bgeu	a5,s1,800045b0 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    800045f4:	00006517          	auipc	a0,0x6
    800045f8:	f1450513          	addi	a0,a0,-236 # 8000a508 <CONSOLE_STATUS+0x4f8>
    800045fc:	00002097          	auipc	ra,0x2
    80004600:	d04080e7          	jalr	-764(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004604:	00700313          	li	t1,7
    thread_dispatch();
    80004608:	ffffd097          	auipc	ra,0xffffd
    8000460c:	c8c080e7          	jalr	-884(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004610:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80004614:	00006517          	auipc	a0,0x6
    80004618:	f0450513          	addi	a0,a0,-252 # 8000a518 <CONSOLE_STATUS+0x508>
    8000461c:	00002097          	auipc	ra,0x2
    80004620:	ce4080e7          	jalr	-796(ra) # 80006300 <_Z11printStringPKc>
    80004624:	00000613          	li	a2,0
    80004628:	00a00593          	li	a1,10
    8000462c:	0009051b          	sext.w	a0,s2
    80004630:	00002097          	auipc	ra,0x2
    80004634:	e80080e7          	jalr	-384(ra) # 800064b0 <_Z8printIntiii>
    80004638:	00006517          	auipc	a0,0x6
    8000463c:	b4850513          	addi	a0,a0,-1208 # 8000a180 <CONSOLE_STATUS+0x170>
    80004640:	00002097          	auipc	ra,0x2
    80004644:	cc0080e7          	jalr	-832(ra) # 80006300 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80004648:	00c00513          	li	a0,12
    8000464c:	00000097          	auipc	ra,0x0
    80004650:	d30080e7          	jalr	-720(ra) # 8000437c <_ZL9fibonaccim>
    80004654:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004658:	00006517          	auipc	a0,0x6
    8000465c:	ec850513          	addi	a0,a0,-312 # 8000a520 <CONSOLE_STATUS+0x510>
    80004660:	00002097          	auipc	ra,0x2
    80004664:	ca0080e7          	jalr	-864(ra) # 80006300 <_Z11printStringPKc>
    80004668:	00000613          	li	a2,0
    8000466c:	00a00593          	li	a1,10
    80004670:	0009051b          	sext.w	a0,s2
    80004674:	00002097          	auipc	ra,0x2
    80004678:	e3c080e7          	jalr	-452(ra) # 800064b0 <_Z8printIntiii>
    8000467c:	00006517          	auipc	a0,0x6
    80004680:	b0450513          	addi	a0,a0,-1276 # 8000a180 <CONSOLE_STATUS+0x170>
    80004684:	00002097          	auipc	ra,0x2
    80004688:	c7c080e7          	jalr	-900(ra) # 80006300 <_Z11printStringPKc>
    8000468c:	0400006f          	j	800046cc <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80004690:	00006517          	auipc	a0,0x6
    80004694:	e7050513          	addi	a0,a0,-400 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80004698:	00002097          	auipc	ra,0x2
    8000469c:	c68080e7          	jalr	-920(ra) # 80006300 <_Z11printStringPKc>
    800046a0:	00000613          	li	a2,0
    800046a4:	00a00593          	li	a1,10
    800046a8:	00048513          	mv	a0,s1
    800046ac:	00002097          	auipc	ra,0x2
    800046b0:	e04080e7          	jalr	-508(ra) # 800064b0 <_Z8printIntiii>
    800046b4:	00006517          	auipc	a0,0x6
    800046b8:	acc50513          	addi	a0,a0,-1332 # 8000a180 <CONSOLE_STATUS+0x170>
    800046bc:	00002097          	auipc	ra,0x2
    800046c0:	c44080e7          	jalr	-956(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046c4:	0014849b          	addiw	s1,s1,1
    800046c8:	0ff4f493          	andi	s1,s1,255
    800046cc:	00500793          	li	a5,5
    800046d0:	fc97f0e3          	bgeu	a5,s1,80004690 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("C finished!\n");
    800046d4:	00006517          	auipc	a0,0x6
    800046d8:	e5c50513          	addi	a0,a0,-420 # 8000a530 <CONSOLE_STATUS+0x520>
    800046dc:	00002097          	auipc	ra,0x2
    800046e0:	c24080e7          	jalr	-988(ra) # 80006300 <_Z11printStringPKc>
    finishedC = true;
    800046e4:	00100793          	li	a5,1
    800046e8:	00036717          	auipc	a4,0x36
    800046ec:	90f70923          	sb	a5,-1774(a4) # 80039ffa <_ZL9finishedC>
    thread_dispatch();
    800046f0:	ffffd097          	auipc	ra,0xffffd
    800046f4:	ba4080e7          	jalr	-1116(ra) # 80001294 <_Z15thread_dispatchv>
}
    800046f8:	01813083          	ld	ra,24(sp)
    800046fc:	01013403          	ld	s0,16(sp)
    80004700:	00813483          	ld	s1,8(sp)
    80004704:	00013903          	ld	s2,0(sp)
    80004708:	02010113          	addi	sp,sp,32
    8000470c:	00008067          	ret

0000000080004710 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80004710:	fe010113          	addi	sp,sp,-32
    80004714:	00113c23          	sd	ra,24(sp)
    80004718:	00813823          	sd	s0,16(sp)
    8000471c:	00913423          	sd	s1,8(sp)
    80004720:	01213023          	sd	s2,0(sp)
    80004724:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004728:	00a00493          	li	s1,10
    8000472c:	0400006f          	j	8000476c <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004730:	00006517          	auipc	a0,0x6
    80004734:	e1050513          	addi	a0,a0,-496 # 8000a540 <CONSOLE_STATUS+0x530>
    80004738:	00002097          	auipc	ra,0x2
    8000473c:	bc8080e7          	jalr	-1080(ra) # 80006300 <_Z11printStringPKc>
    80004740:	00000613          	li	a2,0
    80004744:	00a00593          	li	a1,10
    80004748:	00048513          	mv	a0,s1
    8000474c:	00002097          	auipc	ra,0x2
    80004750:	d64080e7          	jalr	-668(ra) # 800064b0 <_Z8printIntiii>
    80004754:	00006517          	auipc	a0,0x6
    80004758:	a2c50513          	addi	a0,a0,-1492 # 8000a180 <CONSOLE_STATUS+0x170>
    8000475c:	00002097          	auipc	ra,0x2
    80004760:	ba4080e7          	jalr	-1116(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004764:	0014849b          	addiw	s1,s1,1
    80004768:	0ff4f493          	andi	s1,s1,255
    8000476c:	00c00793          	li	a5,12
    80004770:	fc97f0e3          	bgeu	a5,s1,80004730 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80004774:	00006517          	auipc	a0,0x6
    80004778:	dd450513          	addi	a0,a0,-556 # 8000a548 <CONSOLE_STATUS+0x538>
    8000477c:	00002097          	auipc	ra,0x2
    80004780:	b84080e7          	jalr	-1148(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80004784:	00500313          	li	t1,5
    thread_dispatch();
    80004788:	ffffd097          	auipc	ra,0xffffd
    8000478c:	b0c080e7          	jalr	-1268(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004790:	01000513          	li	a0,16
    80004794:	00000097          	auipc	ra,0x0
    80004798:	be8080e7          	jalr	-1048(ra) # 8000437c <_ZL9fibonaccim>
    8000479c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800047a0:	00006517          	auipc	a0,0x6
    800047a4:	db850513          	addi	a0,a0,-584 # 8000a558 <CONSOLE_STATUS+0x548>
    800047a8:	00002097          	auipc	ra,0x2
    800047ac:	b58080e7          	jalr	-1192(ra) # 80006300 <_Z11printStringPKc>
    800047b0:	00000613          	li	a2,0
    800047b4:	00a00593          	li	a1,10
    800047b8:	0009051b          	sext.w	a0,s2
    800047bc:	00002097          	auipc	ra,0x2
    800047c0:	cf4080e7          	jalr	-780(ra) # 800064b0 <_Z8printIntiii>
    800047c4:	00006517          	auipc	a0,0x6
    800047c8:	9bc50513          	addi	a0,a0,-1604 # 8000a180 <CONSOLE_STATUS+0x170>
    800047cc:	00002097          	auipc	ra,0x2
    800047d0:	b34080e7          	jalr	-1228(ra) # 80006300 <_Z11printStringPKc>
    800047d4:	0400006f          	j	80004814 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800047d8:	00006517          	auipc	a0,0x6
    800047dc:	d6850513          	addi	a0,a0,-664 # 8000a540 <CONSOLE_STATUS+0x530>
    800047e0:	00002097          	auipc	ra,0x2
    800047e4:	b20080e7          	jalr	-1248(ra) # 80006300 <_Z11printStringPKc>
    800047e8:	00000613          	li	a2,0
    800047ec:	00a00593          	li	a1,10
    800047f0:	00048513          	mv	a0,s1
    800047f4:	00002097          	auipc	ra,0x2
    800047f8:	cbc080e7          	jalr	-836(ra) # 800064b0 <_Z8printIntiii>
    800047fc:	00006517          	auipc	a0,0x6
    80004800:	98450513          	addi	a0,a0,-1660 # 8000a180 <CONSOLE_STATUS+0x170>
    80004804:	00002097          	auipc	ra,0x2
    80004808:	afc080e7          	jalr	-1284(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000480c:	0014849b          	addiw	s1,s1,1
    80004810:	0ff4f493          	andi	s1,s1,255
    80004814:	00f00793          	li	a5,15
    80004818:	fc97f0e3          	bgeu	a5,s1,800047d8 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    8000481c:	00006517          	auipc	a0,0x6
    80004820:	d4c50513          	addi	a0,a0,-692 # 8000a568 <CONSOLE_STATUS+0x558>
    80004824:	00002097          	auipc	ra,0x2
    80004828:	adc080e7          	jalr	-1316(ra) # 80006300 <_Z11printStringPKc>
    finishedD = true;
    8000482c:	00100793          	li	a5,1
    80004830:	00035717          	auipc	a4,0x35
    80004834:	7cf705a3          	sb	a5,1995(a4) # 80039ffb <_ZL9finishedD>
    thread_dispatch();
    80004838:	ffffd097          	auipc	ra,0xffffd
    8000483c:	a5c080e7          	jalr	-1444(ra) # 80001294 <_Z15thread_dispatchv>
}
    80004840:	01813083          	ld	ra,24(sp)
    80004844:	01013403          	ld	s0,16(sp)
    80004848:	00813483          	ld	s1,8(sp)
    8000484c:	00013903          	ld	s2,0(sp)
    80004850:	02010113          	addi	sp,sp,32
    80004854:	00008067          	ret

0000000080004858 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80004858:	fc010113          	addi	sp,sp,-64
    8000485c:	02113c23          	sd	ra,56(sp)
    80004860:	02813823          	sd	s0,48(sp)
    80004864:	02913423          	sd	s1,40(sp)
    80004868:	03213023          	sd	s2,32(sp)
    8000486c:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80004870:	02000513          	li	a0,32
    80004874:	ffffe097          	auipc	ra,0xffffe
    80004878:	e2c080e7          	jalr	-468(ra) # 800026a0 <_Znwm>
    8000487c:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80004880:	ffffe097          	auipc	ra,0xffffe
    80004884:	f44080e7          	jalr	-188(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80004888:	00009797          	auipc	a5,0x9
    8000488c:	a0878793          	addi	a5,a5,-1528 # 8000d290 <_ZTV7WorkerA+0x10>
    80004890:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80004894:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80004898:	00006517          	auipc	a0,0x6
    8000489c:	ce050513          	addi	a0,a0,-800 # 8000a578 <CONSOLE_STATUS+0x568>
    800048a0:	00002097          	auipc	ra,0x2
    800048a4:	a60080e7          	jalr	-1440(ra) # 80006300 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    800048a8:	02000513          	li	a0,32
    800048ac:	ffffe097          	auipc	ra,0xffffe
    800048b0:	df4080e7          	jalr	-524(ra) # 800026a0 <_Znwm>
    800048b4:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    800048b8:	ffffe097          	auipc	ra,0xffffe
    800048bc:	f0c080e7          	jalr	-244(ra) # 800027c4 <_ZN6ThreadC1Ev>
    800048c0:	00009797          	auipc	a5,0x9
    800048c4:	9f878793          	addi	a5,a5,-1544 # 8000d2b8 <_ZTV7WorkerB+0x10>
    800048c8:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    800048cc:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    800048d0:	00006517          	auipc	a0,0x6
    800048d4:	cc050513          	addi	a0,a0,-832 # 8000a590 <CONSOLE_STATUS+0x580>
    800048d8:	00002097          	auipc	ra,0x2
    800048dc:	a28080e7          	jalr	-1496(ra) # 80006300 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    800048e0:	02000513          	li	a0,32
    800048e4:	ffffe097          	auipc	ra,0xffffe
    800048e8:	dbc080e7          	jalr	-580(ra) # 800026a0 <_Znwm>
    800048ec:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    800048f0:	ffffe097          	auipc	ra,0xffffe
    800048f4:	ed4080e7          	jalr	-300(ra) # 800027c4 <_ZN6ThreadC1Ev>
    800048f8:	00009797          	auipc	a5,0x9
    800048fc:	9e878793          	addi	a5,a5,-1560 # 8000d2e0 <_ZTV7WorkerC+0x10>
    80004900:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80004904:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80004908:	00006517          	auipc	a0,0x6
    8000490c:	ca050513          	addi	a0,a0,-864 # 8000a5a8 <CONSOLE_STATUS+0x598>
    80004910:	00002097          	auipc	ra,0x2
    80004914:	9f0080e7          	jalr	-1552(ra) # 80006300 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80004918:	02000513          	li	a0,32
    8000491c:	ffffe097          	auipc	ra,0xffffe
    80004920:	d84080e7          	jalr	-636(ra) # 800026a0 <_Znwm>
    80004924:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80004928:	ffffe097          	auipc	ra,0xffffe
    8000492c:	e9c080e7          	jalr	-356(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80004930:	00009797          	auipc	a5,0x9
    80004934:	9d878793          	addi	a5,a5,-1576 # 8000d308 <_ZTV7WorkerD+0x10>
    80004938:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    8000493c:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80004940:	00006517          	auipc	a0,0x6
    80004944:	c8050513          	addi	a0,a0,-896 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80004948:	00002097          	auipc	ra,0x2
    8000494c:	9b8080e7          	jalr	-1608(ra) # 80006300 <_Z11printStringPKc>
    for(int i=0; i<4; i++) {
    80004950:	00000493          	li	s1,0
    80004954:	00300793          	li	a5,3
    80004958:	0297c663          	blt	a5,s1,80004984 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    8000495c:	00349793          	slli	a5,s1,0x3
    80004960:	fe040713          	addi	a4,s0,-32
    80004964:	00f707b3          	add	a5,a4,a5
    80004968:	fe07b503          	ld	a0,-32(a5)
    8000496c:	ffffe097          	auipc	ra,0xffffe
    80004970:	ea4080e7          	jalr	-348(ra) # 80002810 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80004974:	0014849b          	addiw	s1,s1,1
    80004978:	fddff06f          	j	80004954 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    8000497c:	ffffe097          	auipc	ra,0xffffe
    80004980:	e6c080e7          	jalr	-404(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004984:	00035797          	auipc	a5,0x35
    80004988:	6747c783          	lbu	a5,1652(a5) # 80039ff8 <_ZL9finishedA>
    8000498c:	fe0788e3          	beqz	a5,8000497c <_Z20Threads_CPP_API_testv+0x124>
    80004990:	00035797          	auipc	a5,0x35
    80004994:	6697c783          	lbu	a5,1641(a5) # 80039ff9 <_ZL9finishedB>
    80004998:	fe0782e3          	beqz	a5,8000497c <_Z20Threads_CPP_API_testv+0x124>
    8000499c:	00035797          	auipc	a5,0x35
    800049a0:	65e7c783          	lbu	a5,1630(a5) # 80039ffa <_ZL9finishedC>
    800049a4:	fc078ce3          	beqz	a5,8000497c <_Z20Threads_CPP_API_testv+0x124>
    800049a8:	00035797          	auipc	a5,0x35
    800049ac:	6537c783          	lbu	a5,1619(a5) # 80039ffb <_ZL9finishedD>
    800049b0:	fc0786e3          	beqz	a5,8000497c <_Z20Threads_CPP_API_testv+0x124>
    800049b4:	fc040493          	addi	s1,s0,-64
    800049b8:	0080006f          	j	800049c0 <_Z20Threads_CPP_API_testv+0x168>
    }
    for (auto thread: threads) { delete thread; }
    800049bc:	00848493          	addi	s1,s1,8
    800049c0:	fe040793          	addi	a5,s0,-32
    800049c4:	08f48663          	beq	s1,a5,80004a50 <_Z20Threads_CPP_API_testv+0x1f8>
    800049c8:	0004b503          	ld	a0,0(s1)
    800049cc:	fe0508e3          	beqz	a0,800049bc <_Z20Threads_CPP_API_testv+0x164>
    800049d0:	00053783          	ld	a5,0(a0)
    800049d4:	0087b783          	ld	a5,8(a5)
    800049d8:	000780e7          	jalr	a5
    800049dc:	fe1ff06f          	j	800049bc <_Z20Threads_CPP_API_testv+0x164>
    800049e0:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    800049e4:	00048513          	mv	a0,s1
    800049e8:	ffffe097          	auipc	ra,0xffffe
    800049ec:	ce0080e7          	jalr	-800(ra) # 800026c8 <_ZdlPv>
    800049f0:	00090513          	mv	a0,s2
    800049f4:	00036097          	auipc	ra,0x36
    800049f8:	714080e7          	jalr	1812(ra) # 8003b108 <_Unwind_Resume>
    800049fc:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80004a00:	00048513          	mv	a0,s1
    80004a04:	ffffe097          	auipc	ra,0xffffe
    80004a08:	cc4080e7          	jalr	-828(ra) # 800026c8 <_ZdlPv>
    80004a0c:	00090513          	mv	a0,s2
    80004a10:	00036097          	auipc	ra,0x36
    80004a14:	6f8080e7          	jalr	1784(ra) # 8003b108 <_Unwind_Resume>
    80004a18:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80004a1c:	00048513          	mv	a0,s1
    80004a20:	ffffe097          	auipc	ra,0xffffe
    80004a24:	ca8080e7          	jalr	-856(ra) # 800026c8 <_ZdlPv>
    80004a28:	00090513          	mv	a0,s2
    80004a2c:	00036097          	auipc	ra,0x36
    80004a30:	6dc080e7          	jalr	1756(ra) # 8003b108 <_Unwind_Resume>
    80004a34:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80004a38:	00048513          	mv	a0,s1
    80004a3c:	ffffe097          	auipc	ra,0xffffe
    80004a40:	c8c080e7          	jalr	-884(ra) # 800026c8 <_ZdlPv>
    80004a44:	00090513          	mv	a0,s2
    80004a48:	00036097          	auipc	ra,0x36
    80004a4c:	6c0080e7          	jalr	1728(ra) # 8003b108 <_Unwind_Resume>
}
    80004a50:	03813083          	ld	ra,56(sp)
    80004a54:	03013403          	ld	s0,48(sp)
    80004a58:	02813483          	ld	s1,40(sp)
    80004a5c:	02013903          	ld	s2,32(sp)
    80004a60:	04010113          	addi	sp,sp,64
    80004a64:	00008067          	ret

0000000080004a68 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80004a68:	ff010113          	addi	sp,sp,-16
    80004a6c:	00113423          	sd	ra,8(sp)
    80004a70:	00813023          	sd	s0,0(sp)
    80004a74:	01010413          	addi	s0,sp,16
    80004a78:	00009797          	auipc	a5,0x9
    80004a7c:	81878793          	addi	a5,a5,-2024 # 8000d290 <_ZTV7WorkerA+0x10>
    80004a80:	00f53023          	sd	a5,0(a0)
    80004a84:	ffffe097          	auipc	ra,0xffffe
    80004a88:	b78080e7          	jalr	-1160(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004a8c:	00813083          	ld	ra,8(sp)
    80004a90:	00013403          	ld	s0,0(sp)
    80004a94:	01010113          	addi	sp,sp,16
    80004a98:	00008067          	ret

0000000080004a9c <_ZN7WorkerAD0Ev>:
    80004a9c:	fe010113          	addi	sp,sp,-32
    80004aa0:	00113c23          	sd	ra,24(sp)
    80004aa4:	00813823          	sd	s0,16(sp)
    80004aa8:	00913423          	sd	s1,8(sp)
    80004aac:	02010413          	addi	s0,sp,32
    80004ab0:	00050493          	mv	s1,a0
    80004ab4:	00008797          	auipc	a5,0x8
    80004ab8:	7dc78793          	addi	a5,a5,2012 # 8000d290 <_ZTV7WorkerA+0x10>
    80004abc:	00f53023          	sd	a5,0(a0)
    80004ac0:	ffffe097          	auipc	ra,0xffffe
    80004ac4:	b3c080e7          	jalr	-1220(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004ac8:	00048513          	mv	a0,s1
    80004acc:	ffffe097          	auipc	ra,0xffffe
    80004ad0:	bfc080e7          	jalr	-1028(ra) # 800026c8 <_ZdlPv>
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00813483          	ld	s1,8(sp)
    80004ae0:	02010113          	addi	sp,sp,32
    80004ae4:	00008067          	ret

0000000080004ae8 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80004ae8:	ff010113          	addi	sp,sp,-16
    80004aec:	00113423          	sd	ra,8(sp)
    80004af0:	00813023          	sd	s0,0(sp)
    80004af4:	01010413          	addi	s0,sp,16
    80004af8:	00008797          	auipc	a5,0x8
    80004afc:	7c078793          	addi	a5,a5,1984 # 8000d2b8 <_ZTV7WorkerB+0x10>
    80004b00:	00f53023          	sd	a5,0(a0)
    80004b04:	ffffe097          	auipc	ra,0xffffe
    80004b08:	af8080e7          	jalr	-1288(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004b0c:	00813083          	ld	ra,8(sp)
    80004b10:	00013403          	ld	s0,0(sp)
    80004b14:	01010113          	addi	sp,sp,16
    80004b18:	00008067          	ret

0000000080004b1c <_ZN7WorkerBD0Ev>:
    80004b1c:	fe010113          	addi	sp,sp,-32
    80004b20:	00113c23          	sd	ra,24(sp)
    80004b24:	00813823          	sd	s0,16(sp)
    80004b28:	00913423          	sd	s1,8(sp)
    80004b2c:	02010413          	addi	s0,sp,32
    80004b30:	00050493          	mv	s1,a0
    80004b34:	00008797          	auipc	a5,0x8
    80004b38:	78478793          	addi	a5,a5,1924 # 8000d2b8 <_ZTV7WorkerB+0x10>
    80004b3c:	00f53023          	sd	a5,0(a0)
    80004b40:	ffffe097          	auipc	ra,0xffffe
    80004b44:	abc080e7          	jalr	-1348(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004b48:	00048513          	mv	a0,s1
    80004b4c:	ffffe097          	auipc	ra,0xffffe
    80004b50:	b7c080e7          	jalr	-1156(ra) # 800026c8 <_ZdlPv>
    80004b54:	01813083          	ld	ra,24(sp)
    80004b58:	01013403          	ld	s0,16(sp)
    80004b5c:	00813483          	ld	s1,8(sp)
    80004b60:	02010113          	addi	sp,sp,32
    80004b64:	00008067          	ret

0000000080004b68 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80004b68:	ff010113          	addi	sp,sp,-16
    80004b6c:	00113423          	sd	ra,8(sp)
    80004b70:	00813023          	sd	s0,0(sp)
    80004b74:	01010413          	addi	s0,sp,16
    80004b78:	00008797          	auipc	a5,0x8
    80004b7c:	76878793          	addi	a5,a5,1896 # 8000d2e0 <_ZTV7WorkerC+0x10>
    80004b80:	00f53023          	sd	a5,0(a0)
    80004b84:	ffffe097          	auipc	ra,0xffffe
    80004b88:	a78080e7          	jalr	-1416(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004b8c:	00813083          	ld	ra,8(sp)
    80004b90:	00013403          	ld	s0,0(sp)
    80004b94:	01010113          	addi	sp,sp,16
    80004b98:	00008067          	ret

0000000080004b9c <_ZN7WorkerCD0Ev>:
    80004b9c:	fe010113          	addi	sp,sp,-32
    80004ba0:	00113c23          	sd	ra,24(sp)
    80004ba4:	00813823          	sd	s0,16(sp)
    80004ba8:	00913423          	sd	s1,8(sp)
    80004bac:	02010413          	addi	s0,sp,32
    80004bb0:	00050493          	mv	s1,a0
    80004bb4:	00008797          	auipc	a5,0x8
    80004bb8:	72c78793          	addi	a5,a5,1836 # 8000d2e0 <_ZTV7WorkerC+0x10>
    80004bbc:	00f53023          	sd	a5,0(a0)
    80004bc0:	ffffe097          	auipc	ra,0xffffe
    80004bc4:	a3c080e7          	jalr	-1476(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	ffffe097          	auipc	ra,0xffffe
    80004bd0:	afc080e7          	jalr	-1284(ra) # 800026c8 <_ZdlPv>
    80004bd4:	01813083          	ld	ra,24(sp)
    80004bd8:	01013403          	ld	s0,16(sp)
    80004bdc:	00813483          	ld	s1,8(sp)
    80004be0:	02010113          	addi	sp,sp,32
    80004be4:	00008067          	ret

0000000080004be8 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80004be8:	ff010113          	addi	sp,sp,-16
    80004bec:	00113423          	sd	ra,8(sp)
    80004bf0:	00813023          	sd	s0,0(sp)
    80004bf4:	01010413          	addi	s0,sp,16
    80004bf8:	00008797          	auipc	a5,0x8
    80004bfc:	71078793          	addi	a5,a5,1808 # 8000d308 <_ZTV7WorkerD+0x10>
    80004c00:	00f53023          	sd	a5,0(a0)
    80004c04:	ffffe097          	auipc	ra,0xffffe
    80004c08:	9f8080e7          	jalr	-1544(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004c0c:	00813083          	ld	ra,8(sp)
    80004c10:	00013403          	ld	s0,0(sp)
    80004c14:	01010113          	addi	sp,sp,16
    80004c18:	00008067          	ret

0000000080004c1c <_ZN7WorkerDD0Ev>:
    80004c1c:	fe010113          	addi	sp,sp,-32
    80004c20:	00113c23          	sd	ra,24(sp)
    80004c24:	00813823          	sd	s0,16(sp)
    80004c28:	00913423          	sd	s1,8(sp)
    80004c2c:	02010413          	addi	s0,sp,32
    80004c30:	00050493          	mv	s1,a0
    80004c34:	00008797          	auipc	a5,0x8
    80004c38:	6d478793          	addi	a5,a5,1748 # 8000d308 <_ZTV7WorkerD+0x10>
    80004c3c:	00f53023          	sd	a5,0(a0)
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	9bc080e7          	jalr	-1604(ra) # 800025fc <_ZN6ThreadD1Ev>
    80004c48:	00048513          	mv	a0,s1
    80004c4c:	ffffe097          	auipc	ra,0xffffe
    80004c50:	a7c080e7          	jalr	-1412(ra) # 800026c8 <_ZdlPv>
    80004c54:	01813083          	ld	ra,24(sp)
    80004c58:	01013403          	ld	s0,16(sp)
    80004c5c:	00813483          	ld	s1,8(sp)
    80004c60:	02010113          	addi	sp,sp,32
    80004c64:	00008067          	ret

0000000080004c68 <_ZN7WorkerA3runEv>:
    void run() override {
    80004c68:	ff010113          	addi	sp,sp,-16
    80004c6c:	00113423          	sd	ra,8(sp)
    80004c70:	00813023          	sd	s0,0(sp)
    80004c74:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80004c78:	00000593          	li	a1,0
    80004c7c:	fffff097          	auipc	ra,0xfffff
    80004c80:	774080e7          	jalr	1908(ra) # 800043f0 <_ZN7WorkerA11workerBodyAEPv>
    }
    80004c84:	00813083          	ld	ra,8(sp)
    80004c88:	00013403          	ld	s0,0(sp)
    80004c8c:	01010113          	addi	sp,sp,16
    80004c90:	00008067          	ret

0000000080004c94 <_ZN7WorkerB3runEv>:
    void run() override {
    80004c94:	ff010113          	addi	sp,sp,-16
    80004c98:	00113423          	sd	ra,8(sp)
    80004c9c:	00813023          	sd	s0,0(sp)
    80004ca0:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80004ca4:	00000593          	li	a1,0
    80004ca8:	00000097          	auipc	ra,0x0
    80004cac:	814080e7          	jalr	-2028(ra) # 800044bc <_ZN7WorkerB11workerBodyBEPv>
    }
    80004cb0:	00813083          	ld	ra,8(sp)
    80004cb4:	00013403          	ld	s0,0(sp)
    80004cb8:	01010113          	addi	sp,sp,16
    80004cbc:	00008067          	ret

0000000080004cc0 <_ZN7WorkerC3runEv>:
    void run() override {
    80004cc0:	ff010113          	addi	sp,sp,-16
    80004cc4:	00113423          	sd	ra,8(sp)
    80004cc8:	00813023          	sd	s0,0(sp)
    80004ccc:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80004cd0:	00000593          	li	a1,0
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	8bc080e7          	jalr	-1860(ra) # 80004590 <_ZN7WorkerC11workerBodyCEPv>
    }
    80004cdc:	00813083          	ld	ra,8(sp)
    80004ce0:	00013403          	ld	s0,0(sp)
    80004ce4:	01010113          	addi	sp,sp,16
    80004ce8:	00008067          	ret

0000000080004cec <_ZN7WorkerD3runEv>:
    void run() override {
    80004cec:	ff010113          	addi	sp,sp,-16
    80004cf0:	00113423          	sd	ra,8(sp)
    80004cf4:	00813023          	sd	s0,0(sp)
    80004cf8:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80004cfc:	00000593          	li	a1,0
    80004d00:	00000097          	auipc	ra,0x0
    80004d04:	a10080e7          	jalr	-1520(ra) # 80004710 <_ZN7WorkerD11workerBodyDEPv>
    }
    80004d08:	00813083          	ld	ra,8(sp)
    80004d0c:	00013403          	ld	s0,0(sp)
    80004d10:	01010113          	addi	sp,sp,16
    80004d14:	00008067          	ret

0000000080004d18 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80004d18:	f8010113          	addi	sp,sp,-128
    80004d1c:	06113c23          	sd	ra,120(sp)
    80004d20:	06813823          	sd	s0,112(sp)
    80004d24:	06913423          	sd	s1,104(sp)
    80004d28:	07213023          	sd	s2,96(sp)
    80004d2c:	05313c23          	sd	s3,88(sp)
    80004d30:	05413823          	sd	s4,80(sp)
    80004d34:	05513423          	sd	s5,72(sp)
    80004d38:	05613023          	sd	s6,64(sp)
    80004d3c:	03713c23          	sd	s7,56(sp)
    80004d40:	03813823          	sd	s8,48(sp)
    80004d44:	03913423          	sd	s9,40(sp)
    80004d48:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80004d4c:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80004d50:	00005517          	auipc	a0,0x5
    80004d54:	69850513          	addi	a0,a0,1688 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80004d58:	00001097          	auipc	ra,0x1
    80004d5c:	5a8080e7          	jalr	1448(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    80004d60:	01e00593          	li	a1,30
    80004d64:	f8040493          	addi	s1,s0,-128
    80004d68:	00048513          	mv	a0,s1
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	61c080e7          	jalr	1564(ra) # 80006388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004d74:	00048513          	mv	a0,s1
    80004d78:	00001097          	auipc	ra,0x1
    80004d7c:	6e8080e7          	jalr	1768(ra) # 80006460 <_Z11stringToIntPKc>
    80004d80:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80004d84:	00005517          	auipc	a0,0x5
    80004d88:	68450513          	addi	a0,a0,1668 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80004d8c:	00001097          	auipc	ra,0x1
    80004d90:	574080e7          	jalr	1396(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    80004d94:	01e00593          	li	a1,30
    80004d98:	00048513          	mv	a0,s1
    80004d9c:	00001097          	auipc	ra,0x1
    80004da0:	5ec080e7          	jalr	1516(ra) # 80006388 <_Z9getStringPci>
    n = stringToInt(input);
    80004da4:	00048513          	mv	a0,s1
    80004da8:	00001097          	auipc	ra,0x1
    80004dac:	6b8080e7          	jalr	1720(ra) # 80006460 <_Z11stringToIntPKc>
    80004db0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80004db4:	00005517          	auipc	a0,0x5
    80004db8:	67450513          	addi	a0,a0,1652 # 8000a428 <CONSOLE_STATUS+0x418>
    80004dbc:	00001097          	auipc	ra,0x1
    80004dc0:	544080e7          	jalr	1348(ra) # 80006300 <_Z11printStringPKc>
    printInt(threadNum);
    80004dc4:	00000613          	li	a2,0
    80004dc8:	00a00593          	li	a1,10
    80004dcc:	00098513          	mv	a0,s3
    80004dd0:	00001097          	auipc	ra,0x1
    80004dd4:	6e0080e7          	jalr	1760(ra) # 800064b0 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80004dd8:	00005517          	auipc	a0,0x5
    80004ddc:	66850513          	addi	a0,a0,1640 # 8000a440 <CONSOLE_STATUS+0x430>
    80004de0:	00001097          	auipc	ra,0x1
    80004de4:	520080e7          	jalr	1312(ra) # 80006300 <_Z11printStringPKc>
    printInt(n);
    80004de8:	00000613          	li	a2,0
    80004dec:	00a00593          	li	a1,10
    80004df0:	00048513          	mv	a0,s1
    80004df4:	00001097          	auipc	ra,0x1
    80004df8:	6bc080e7          	jalr	1724(ra) # 800064b0 <_Z8printIntiii>
    printString(".\n");
    80004dfc:	00005517          	auipc	a0,0x5
    80004e00:	65c50513          	addi	a0,a0,1628 # 8000a458 <CONSOLE_STATUS+0x448>
    80004e04:	00001097          	auipc	ra,0x1
    80004e08:	4fc080e7          	jalr	1276(ra) # 80006300 <_Z11printStringPKc>
    if (threadNum > n) {
    80004e0c:	0334c463          	blt	s1,s3,80004e34 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80004e10:	03305c63          	blez	s3,80004e48 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004e14:	03800513          	li	a0,56
    80004e18:	ffffe097          	auipc	ra,0xffffe
    80004e1c:	888080e7          	jalr	-1912(ra) # 800026a0 <_Znwm>
    80004e20:	00050a93          	mv	s5,a0
    80004e24:	00048593          	mv	a1,s1
    80004e28:	00001097          	auipc	ra,0x1
    80004e2c:	7a8080e7          	jalr	1960(ra) # 800065d0 <_ZN9BufferCPPC1Ei>
    80004e30:	0300006f          	j	80004e60 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004e34:	00005517          	auipc	a0,0x5
    80004e38:	62c50513          	addi	a0,a0,1580 # 8000a460 <CONSOLE_STATUS+0x450>
    80004e3c:	00001097          	auipc	ra,0x1
    80004e40:	4c4080e7          	jalr	1220(ra) # 80006300 <_Z11printStringPKc>
        return;
    80004e44:	0140006f          	j	80004e58 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004e48:	00005517          	auipc	a0,0x5
    80004e4c:	65850513          	addi	a0,a0,1624 # 8000a4a0 <CONSOLE_STATUS+0x490>
    80004e50:	00001097          	auipc	ra,0x1
    80004e54:	4b0080e7          	jalr	1200(ra) # 80006300 <_Z11printStringPKc>
        return;
    80004e58:	000c0113          	mv	sp,s8
    80004e5c:	2140006f          	j	80005070 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80004e60:	01000513          	li	a0,16
    80004e64:	ffffe097          	auipc	ra,0xffffe
    80004e68:	83c080e7          	jalr	-1988(ra) # 800026a0 <_Znwm>
    80004e6c:	00050913          	mv	s2,a0
    80004e70:	00000593          	li	a1,0
    80004e74:	ffffe097          	auipc	ra,0xffffe
    80004e78:	ad4080e7          	jalr	-1324(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80004e7c:	00035797          	auipc	a5,0x35
    80004e80:	1927b623          	sd	s2,396(a5) # 8003a008 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80004e84:	00399793          	slli	a5,s3,0x3
    80004e88:	00f78793          	addi	a5,a5,15
    80004e8c:	ff07f793          	andi	a5,a5,-16
    80004e90:	40f10133          	sub	sp,sp,a5
    80004e94:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80004e98:	0019871b          	addiw	a4,s3,1
    80004e9c:	00171793          	slli	a5,a4,0x1
    80004ea0:	00e787b3          	add	a5,a5,a4
    80004ea4:	00379793          	slli	a5,a5,0x3
    80004ea8:	00f78793          	addi	a5,a5,15
    80004eac:	ff07f793          	andi	a5,a5,-16
    80004eb0:	40f10133          	sub	sp,sp,a5
    80004eb4:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80004eb8:	00199493          	slli	s1,s3,0x1
    80004ebc:	013484b3          	add	s1,s1,s3
    80004ec0:	00349493          	slli	s1,s1,0x3
    80004ec4:	009b04b3          	add	s1,s6,s1
    80004ec8:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80004ecc:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80004ed0:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004ed4:	02800513          	li	a0,40
    80004ed8:	ffffd097          	auipc	ra,0xffffd
    80004edc:	7c8080e7          	jalr	1992(ra) # 800026a0 <_Znwm>
    80004ee0:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80004ee4:	ffffe097          	auipc	ra,0xffffe
    80004ee8:	8e0080e7          	jalr	-1824(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80004eec:	00008797          	auipc	a5,0x8
    80004ef0:	49478793          	addi	a5,a5,1172 # 8000d380 <_ZTV8Consumer+0x10>
    80004ef4:	00fbb023          	sd	a5,0(s7)
    80004ef8:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80004efc:	000b8513          	mv	a0,s7
    80004f00:	ffffe097          	auipc	ra,0xffffe
    80004f04:	910080e7          	jalr	-1776(ra) # 80002810 <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80004f08:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80004f0c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80004f10:	00035797          	auipc	a5,0x35
    80004f14:	0f87b783          	ld	a5,248(a5) # 8003a008 <_ZL10waitForAll>
    80004f18:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f1c:	02800513          	li	a0,40
    80004f20:	ffffd097          	auipc	ra,0xffffd
    80004f24:	780080e7          	jalr	1920(ra) # 800026a0 <_Znwm>
    80004f28:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80004f2c:	ffffe097          	auipc	ra,0xffffe
    80004f30:	898080e7          	jalr	-1896(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80004f34:	00008797          	auipc	a5,0x8
    80004f38:	3fc78793          	addi	a5,a5,1020 # 8000d330 <_ZTV16ProducerKeyborad+0x10>
    80004f3c:	00f4b023          	sd	a5,0(s1)
    80004f40:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004f44:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80004f48:	00048513          	mv	a0,s1
    80004f4c:	ffffe097          	auipc	ra,0xffffe
    80004f50:	8c4080e7          	jalr	-1852(ra) # 80002810 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004f54:	00100913          	li	s2,1
    80004f58:	0300006f          	j	80004f88 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004f5c:	00008797          	auipc	a5,0x8
    80004f60:	3fc78793          	addi	a5,a5,1020 # 8000d358 <_ZTV8Producer+0x10>
    80004f64:	00fcb023          	sd	a5,0(s9)
    80004f68:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80004f6c:	00391793          	slli	a5,s2,0x3
    80004f70:	00fa07b3          	add	a5,s4,a5
    80004f74:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80004f78:	000c8513          	mv	a0,s9
    80004f7c:	ffffe097          	auipc	ra,0xffffe
    80004f80:	894080e7          	jalr	-1900(ra) # 80002810 <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80004f84:	0019091b          	addiw	s2,s2,1
    80004f88:	05395263          	bge	s2,s3,80004fcc <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80004f8c:	00191493          	slli	s1,s2,0x1
    80004f90:	012484b3          	add	s1,s1,s2
    80004f94:	00349493          	slli	s1,s1,0x3
    80004f98:	009b04b3          	add	s1,s6,s1
    80004f9c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80004fa0:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80004fa4:	00035797          	auipc	a5,0x35
    80004fa8:	0647b783          	ld	a5,100(a5) # 8003a008 <_ZL10waitForAll>
    80004fac:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80004fb0:	02800513          	li	a0,40
    80004fb4:	ffffd097          	auipc	ra,0xffffd
    80004fb8:	6ec080e7          	jalr	1772(ra) # 800026a0 <_Znwm>
    80004fbc:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80004fc0:	ffffe097          	auipc	ra,0xffffe
    80004fc4:	804080e7          	jalr	-2044(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80004fc8:	f95ff06f          	j	80004f5c <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80004fcc:	ffffe097          	auipc	ra,0xffffe
    80004fd0:	81c080e7          	jalr	-2020(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fd4:	00000493          	li	s1,0
    80004fd8:	0099ce63          	blt	s3,s1,80004ff4 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80004fdc:	00035517          	auipc	a0,0x35
    80004fe0:	02c53503          	ld	a0,44(a0) # 8003a008 <_ZL10waitForAll>
    80004fe4:	ffffe097          	auipc	ra,0xffffe
    80004fe8:	9b0080e7          	jalr	-1616(ra) # 80002994 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004fec:	0014849b          	addiw	s1,s1,1
    80004ff0:	fe9ff06f          	j	80004fd8 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80004ff4:	00035517          	auipc	a0,0x35
    80004ff8:	01453503          	ld	a0,20(a0) # 8003a008 <_ZL10waitForAll>
    80004ffc:	00050863          	beqz	a0,8000500c <_Z20testConsumerProducerv+0x2f4>
    80005000:	00053783          	ld	a5,0(a0)
    80005004:	0087b783          	ld	a5,8(a5)
    80005008:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    8000500c:	00000493          	li	s1,0
    80005010:	0080006f          	j	80005018 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80005014:	0014849b          	addiw	s1,s1,1
    80005018:	0334d263          	bge	s1,s3,8000503c <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    8000501c:	00349793          	slli	a5,s1,0x3
    80005020:	00fa07b3          	add	a5,s4,a5
    80005024:	0007b503          	ld	a0,0(a5)
    80005028:	fe0506e3          	beqz	a0,80005014 <_Z20testConsumerProducerv+0x2fc>
    8000502c:	00053783          	ld	a5,0(a0)
    80005030:	0087b783          	ld	a5,8(a5)
    80005034:	000780e7          	jalr	a5
    80005038:	fddff06f          	j	80005014 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    8000503c:	000b8a63          	beqz	s7,80005050 <_Z20testConsumerProducerv+0x338>
    80005040:	000bb783          	ld	a5,0(s7)
    80005044:	0087b783          	ld	a5,8(a5)
    80005048:	000b8513          	mv	a0,s7
    8000504c:	000780e7          	jalr	a5
    delete buffer;
    80005050:	000a8e63          	beqz	s5,8000506c <_Z20testConsumerProducerv+0x354>
    80005054:	000a8513          	mv	a0,s5
    80005058:	00002097          	auipc	ra,0x2
    8000505c:	870080e7          	jalr	-1936(ra) # 800068c8 <_ZN9BufferCPPD1Ev>
    80005060:	000a8513          	mv	a0,s5
    80005064:	ffffd097          	auipc	ra,0xffffd
    80005068:	664080e7          	jalr	1636(ra) # 800026c8 <_ZdlPv>
    8000506c:	000c0113          	mv	sp,s8
}
    80005070:	f8040113          	addi	sp,s0,-128
    80005074:	07813083          	ld	ra,120(sp)
    80005078:	07013403          	ld	s0,112(sp)
    8000507c:	06813483          	ld	s1,104(sp)
    80005080:	06013903          	ld	s2,96(sp)
    80005084:	05813983          	ld	s3,88(sp)
    80005088:	05013a03          	ld	s4,80(sp)
    8000508c:	04813a83          	ld	s5,72(sp)
    80005090:	04013b03          	ld	s6,64(sp)
    80005094:	03813b83          	ld	s7,56(sp)
    80005098:	03013c03          	ld	s8,48(sp)
    8000509c:	02813c83          	ld	s9,40(sp)
    800050a0:	08010113          	addi	sp,sp,128
    800050a4:	00008067          	ret
    800050a8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    800050ac:	000a8513          	mv	a0,s5
    800050b0:	ffffd097          	auipc	ra,0xffffd
    800050b4:	618080e7          	jalr	1560(ra) # 800026c8 <_ZdlPv>
    800050b8:	00048513          	mv	a0,s1
    800050bc:	00036097          	auipc	ra,0x36
    800050c0:	04c080e7          	jalr	76(ra) # 8003b108 <_Unwind_Resume>
    800050c4:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    800050c8:	00090513          	mv	a0,s2
    800050cc:	ffffd097          	auipc	ra,0xffffd
    800050d0:	5fc080e7          	jalr	1532(ra) # 800026c8 <_ZdlPv>
    800050d4:	00048513          	mv	a0,s1
    800050d8:	00036097          	auipc	ra,0x36
    800050dc:	030080e7          	jalr	48(ra) # 8003b108 <_Unwind_Resume>
    800050e0:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    800050e4:	000b8513          	mv	a0,s7
    800050e8:	ffffd097          	auipc	ra,0xffffd
    800050ec:	5e0080e7          	jalr	1504(ra) # 800026c8 <_ZdlPv>
    800050f0:	00048513          	mv	a0,s1
    800050f4:	00036097          	auipc	ra,0x36
    800050f8:	014080e7          	jalr	20(ra) # 8003b108 <_Unwind_Resume>
    800050fc:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80005100:	00048513          	mv	a0,s1
    80005104:	ffffd097          	auipc	ra,0xffffd
    80005108:	5c4080e7          	jalr	1476(ra) # 800026c8 <_ZdlPv>
    8000510c:	00090513          	mv	a0,s2
    80005110:	00036097          	auipc	ra,0x36
    80005114:	ff8080e7          	jalr	-8(ra) # 8003b108 <_Unwind_Resume>
    80005118:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000511c:	000c8513          	mv	a0,s9
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	5a8080e7          	jalr	1448(ra) # 800026c8 <_ZdlPv>
    80005128:	00048513          	mv	a0,s1
    8000512c:	00036097          	auipc	ra,0x36
    80005130:	fdc080e7          	jalr	-36(ra) # 8003b108 <_Unwind_Resume>

0000000080005134 <_ZN8Consumer3runEv>:
    void run() override {
    80005134:	fd010113          	addi	sp,sp,-48
    80005138:	02113423          	sd	ra,40(sp)
    8000513c:	02813023          	sd	s0,32(sp)
    80005140:	00913c23          	sd	s1,24(sp)
    80005144:	01213823          	sd	s2,16(sp)
    80005148:	01313423          	sd	s3,8(sp)
    8000514c:	03010413          	addi	s0,sp,48
    80005150:	00050913          	mv	s2,a0
        int i = 0;
    80005154:	00000993          	li	s3,0
    80005158:	0100006f          	j	80005168 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    8000515c:	00a00513          	li	a0,10
    80005160:	ffffe097          	auipc	ra,0xffffe
    80005164:	90c080e7          	jalr	-1780(ra) # 80002a6c <_ZN7Console4putcEc>
        while (!threadEnd) {
    80005168:	00035797          	auipc	a5,0x35
    8000516c:	e987a783          	lw	a5,-360(a5) # 8003a000 <_ZL9threadEnd>
    80005170:	04079a63          	bnez	a5,800051c4 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    80005174:	02093783          	ld	a5,32(s2)
    80005178:	0087b503          	ld	a0,8(a5)
    8000517c:	00001097          	auipc	ra,0x1
    80005180:	638080e7          	jalr	1592(ra) # 800067b4 <_ZN9BufferCPP3getEv>
            i++;
    80005184:	0019849b          	addiw	s1,s3,1
    80005188:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    8000518c:	0ff57513          	andi	a0,a0,255
    80005190:	ffffe097          	auipc	ra,0xffffe
    80005194:	8dc080e7          	jalr	-1828(ra) # 80002a6c <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80005198:	05000793          	li	a5,80
    8000519c:	02f4e4bb          	remw	s1,s1,a5
    800051a0:	fc0494e3          	bnez	s1,80005168 <_ZN8Consumer3runEv+0x34>
    800051a4:	fb9ff06f          	j	8000515c <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    800051a8:	02093783          	ld	a5,32(s2)
    800051ac:	0087b503          	ld	a0,8(a5)
    800051b0:	00001097          	auipc	ra,0x1
    800051b4:	604080e7          	jalr	1540(ra) # 800067b4 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    800051b8:	0ff57513          	andi	a0,a0,255
    800051bc:	ffffe097          	auipc	ra,0xffffe
    800051c0:	8b0080e7          	jalr	-1872(ra) # 80002a6c <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    800051c4:	02093783          	ld	a5,32(s2)
    800051c8:	0087b503          	ld	a0,8(a5)
    800051cc:	00001097          	auipc	ra,0x1
    800051d0:	674080e7          	jalr	1652(ra) # 80006840 <_ZN9BufferCPP6getCntEv>
    800051d4:	fca04ae3          	bgtz	a0,800051a8 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    800051d8:	02093783          	ld	a5,32(s2)
    800051dc:	0107b503          	ld	a0,16(a5)
    800051e0:	ffffd097          	auipc	ra,0xffffd
    800051e4:	7e0080e7          	jalr	2016(ra) # 800029c0 <_ZN9Semaphore6signalEv>
    }
    800051e8:	02813083          	ld	ra,40(sp)
    800051ec:	02013403          	ld	s0,32(sp)
    800051f0:	01813483          	ld	s1,24(sp)
    800051f4:	01013903          	ld	s2,16(sp)
    800051f8:	00813983          	ld	s3,8(sp)
    800051fc:	03010113          	addi	sp,sp,48
    80005200:	00008067          	ret

0000000080005204 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80005204:	ff010113          	addi	sp,sp,-16
    80005208:	00113423          	sd	ra,8(sp)
    8000520c:	00813023          	sd	s0,0(sp)
    80005210:	01010413          	addi	s0,sp,16
    80005214:	00008797          	auipc	a5,0x8
    80005218:	16c78793          	addi	a5,a5,364 # 8000d380 <_ZTV8Consumer+0x10>
    8000521c:	00f53023          	sd	a5,0(a0)
    80005220:	ffffd097          	auipc	ra,0xffffd
    80005224:	3dc080e7          	jalr	988(ra) # 800025fc <_ZN6ThreadD1Ev>
    80005228:	00813083          	ld	ra,8(sp)
    8000522c:	00013403          	ld	s0,0(sp)
    80005230:	01010113          	addi	sp,sp,16
    80005234:	00008067          	ret

0000000080005238 <_ZN8ConsumerD0Ev>:
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	02010413          	addi	s0,sp,32
    8000524c:	00050493          	mv	s1,a0
    80005250:	00008797          	auipc	a5,0x8
    80005254:	13078793          	addi	a5,a5,304 # 8000d380 <_ZTV8Consumer+0x10>
    80005258:	00f53023          	sd	a5,0(a0)
    8000525c:	ffffd097          	auipc	ra,0xffffd
    80005260:	3a0080e7          	jalr	928(ra) # 800025fc <_ZN6ThreadD1Ev>
    80005264:	00048513          	mv	a0,s1
    80005268:	ffffd097          	auipc	ra,0xffffd
    8000526c:	460080e7          	jalr	1120(ra) # 800026c8 <_ZdlPv>
    80005270:	01813083          	ld	ra,24(sp)
    80005274:	01013403          	ld	s0,16(sp)
    80005278:	00813483          	ld	s1,8(sp)
    8000527c:	02010113          	addi	sp,sp,32
    80005280:	00008067          	ret

0000000080005284 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    80005284:	ff010113          	addi	sp,sp,-16
    80005288:	00113423          	sd	ra,8(sp)
    8000528c:	00813023          	sd	s0,0(sp)
    80005290:	01010413          	addi	s0,sp,16
    80005294:	00008797          	auipc	a5,0x8
    80005298:	09c78793          	addi	a5,a5,156 # 8000d330 <_ZTV16ProducerKeyborad+0x10>
    8000529c:	00f53023          	sd	a5,0(a0)
    800052a0:	ffffd097          	auipc	ra,0xffffd
    800052a4:	35c080e7          	jalr	860(ra) # 800025fc <_ZN6ThreadD1Ev>
    800052a8:	00813083          	ld	ra,8(sp)
    800052ac:	00013403          	ld	s0,0(sp)
    800052b0:	01010113          	addi	sp,sp,16
    800052b4:	00008067          	ret

00000000800052b8 <_ZN16ProducerKeyboradD0Ev>:
    800052b8:	fe010113          	addi	sp,sp,-32
    800052bc:	00113c23          	sd	ra,24(sp)
    800052c0:	00813823          	sd	s0,16(sp)
    800052c4:	00913423          	sd	s1,8(sp)
    800052c8:	02010413          	addi	s0,sp,32
    800052cc:	00050493          	mv	s1,a0
    800052d0:	00008797          	auipc	a5,0x8
    800052d4:	06078793          	addi	a5,a5,96 # 8000d330 <_ZTV16ProducerKeyborad+0x10>
    800052d8:	00f53023          	sd	a5,0(a0)
    800052dc:	ffffd097          	auipc	ra,0xffffd
    800052e0:	320080e7          	jalr	800(ra) # 800025fc <_ZN6ThreadD1Ev>
    800052e4:	00048513          	mv	a0,s1
    800052e8:	ffffd097          	auipc	ra,0xffffd
    800052ec:	3e0080e7          	jalr	992(ra) # 800026c8 <_ZdlPv>
    800052f0:	01813083          	ld	ra,24(sp)
    800052f4:	01013403          	ld	s0,16(sp)
    800052f8:	00813483          	ld	s1,8(sp)
    800052fc:	02010113          	addi	sp,sp,32
    80005300:	00008067          	ret

0000000080005304 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80005304:	ff010113          	addi	sp,sp,-16
    80005308:	00113423          	sd	ra,8(sp)
    8000530c:	00813023          	sd	s0,0(sp)
    80005310:	01010413          	addi	s0,sp,16
    80005314:	00008797          	auipc	a5,0x8
    80005318:	04478793          	addi	a5,a5,68 # 8000d358 <_ZTV8Producer+0x10>
    8000531c:	00f53023          	sd	a5,0(a0)
    80005320:	ffffd097          	auipc	ra,0xffffd
    80005324:	2dc080e7          	jalr	732(ra) # 800025fc <_ZN6ThreadD1Ev>
    80005328:	00813083          	ld	ra,8(sp)
    8000532c:	00013403          	ld	s0,0(sp)
    80005330:	01010113          	addi	sp,sp,16
    80005334:	00008067          	ret

0000000080005338 <_ZN8ProducerD0Ev>:
    80005338:	fe010113          	addi	sp,sp,-32
    8000533c:	00113c23          	sd	ra,24(sp)
    80005340:	00813823          	sd	s0,16(sp)
    80005344:	00913423          	sd	s1,8(sp)
    80005348:	02010413          	addi	s0,sp,32
    8000534c:	00050493          	mv	s1,a0
    80005350:	00008797          	auipc	a5,0x8
    80005354:	00878793          	addi	a5,a5,8 # 8000d358 <_ZTV8Producer+0x10>
    80005358:	00f53023          	sd	a5,0(a0)
    8000535c:	ffffd097          	auipc	ra,0xffffd
    80005360:	2a0080e7          	jalr	672(ra) # 800025fc <_ZN6ThreadD1Ev>
    80005364:	00048513          	mv	a0,s1
    80005368:	ffffd097          	auipc	ra,0xffffd
    8000536c:	360080e7          	jalr	864(ra) # 800026c8 <_ZdlPv>
    80005370:	01813083          	ld	ra,24(sp)
    80005374:	01013403          	ld	s0,16(sp)
    80005378:	00813483          	ld	s1,8(sp)
    8000537c:	02010113          	addi	sp,sp,32
    80005380:	00008067          	ret

0000000080005384 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    80005384:	fe010113          	addi	sp,sp,-32
    80005388:	00113c23          	sd	ra,24(sp)
    8000538c:	00813823          	sd	s0,16(sp)
    80005390:	00913423          	sd	s1,8(sp)
    80005394:	02010413          	addi	s0,sp,32
    80005398:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000539c:	ffffc097          	auipc	ra,0xffffc
    800053a0:	0f8080e7          	jalr	248(ra) # 80001494 <_Z4getcv>
    800053a4:	0005059b          	sext.w	a1,a0
    800053a8:	01b00793          	li	a5,27
    800053ac:	00f58c63          	beq	a1,a5,800053c4 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    800053b0:	0204b783          	ld	a5,32(s1)
    800053b4:	0087b503          	ld	a0,8(a5)
    800053b8:	00001097          	auipc	ra,0x1
    800053bc:	36c080e7          	jalr	876(ra) # 80006724 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    800053c0:	fddff06f          	j	8000539c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    800053c4:	00100793          	li	a5,1
    800053c8:	00035717          	auipc	a4,0x35
    800053cc:	c2f72c23          	sw	a5,-968(a4) # 8003a000 <_ZL9threadEnd>
        td->buffer->put('!');
    800053d0:	0204b783          	ld	a5,32(s1)
    800053d4:	02100593          	li	a1,33
    800053d8:	0087b503          	ld	a0,8(a5)
    800053dc:	00001097          	auipc	ra,0x1
    800053e0:	348080e7          	jalr	840(ra) # 80006724 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    800053e4:	0204b783          	ld	a5,32(s1)
    800053e8:	0107b503          	ld	a0,16(a5)
    800053ec:	ffffd097          	auipc	ra,0xffffd
    800053f0:	5d4080e7          	jalr	1492(ra) # 800029c0 <_ZN9Semaphore6signalEv>
    }
    800053f4:	01813083          	ld	ra,24(sp)
    800053f8:	01013403          	ld	s0,16(sp)
    800053fc:	00813483          	ld	s1,8(sp)
    80005400:	02010113          	addi	sp,sp,32
    80005404:	00008067          	ret

0000000080005408 <_ZN8Producer3runEv>:
    void run() override {
    80005408:	fe010113          	addi	sp,sp,-32
    8000540c:	00113c23          	sd	ra,24(sp)
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00913423          	sd	s1,8(sp)
    80005418:	01213023          	sd	s2,0(sp)
    8000541c:	02010413          	addi	s0,sp,32
    80005420:	00050493          	mv	s1,a0
        int i = 0;
    80005424:	00000913          	li	s2,0
        while (!threadEnd) {
    80005428:	00035797          	auipc	a5,0x35
    8000542c:	bd87a783          	lw	a5,-1064(a5) # 8003a000 <_ZL9threadEnd>
    80005430:	04079263          	bnez	a5,80005474 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    80005434:	0204b783          	ld	a5,32(s1)
    80005438:	0007a583          	lw	a1,0(a5)
    8000543c:	0305859b          	addiw	a1,a1,48
    80005440:	0087b503          	ld	a0,8(a5)
    80005444:	00001097          	auipc	ra,0x1
    80005448:	2e0080e7          	jalr	736(ra) # 80006724 <_ZN9BufferCPP3putEi>
            i++;
    8000544c:	0019071b          	addiw	a4,s2,1
    80005450:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    80005454:	0204b783          	ld	a5,32(s1)
    80005458:	0007a783          	lw	a5,0(a5)
    8000545c:	00e787bb          	addw	a5,a5,a4
    80005460:	00500513          	li	a0,5
    80005464:	02a7e53b          	remw	a0,a5,a0
    80005468:	ffffd097          	auipc	ra,0xffffd
    8000546c:	3fc080e7          	jalr	1020(ra) # 80002864 <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    80005470:	fb9ff06f          	j	80005428 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    80005474:	0204b783          	ld	a5,32(s1)
    80005478:	0107b503          	ld	a0,16(a5)
    8000547c:	ffffd097          	auipc	ra,0xffffd
    80005480:	544080e7          	jalr	1348(ra) # 800029c0 <_ZN9Semaphore6signalEv>
    }
    80005484:	01813083          	ld	ra,24(sp)
    80005488:	01013403          	ld	s0,16(sp)
    8000548c:	00813483          	ld	s1,8(sp)
    80005490:	00013903          	ld	s2,0(sp)
    80005494:	02010113          	addi	sp,sp,32
    80005498:	00008067          	ret

000000008000549c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000549c:	fe010113          	addi	sp,sp,-32
    800054a0:	00113c23          	sd	ra,24(sp)
    800054a4:	00813823          	sd	s0,16(sp)
    800054a8:	00913423          	sd	s1,8(sp)
    800054ac:	01213023          	sd	s2,0(sp)
    800054b0:	02010413          	addi	s0,sp,32
    800054b4:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800054b8:	00100793          	li	a5,1
    800054bc:	02a7f863          	bgeu	a5,a0,800054ec <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800054c0:	00a00793          	li	a5,10
    800054c4:	02f577b3          	remu	a5,a0,a5
    800054c8:	02078e63          	beqz	a5,80005504 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800054cc:	fff48513          	addi	a0,s1,-1
    800054d0:	00000097          	auipc	ra,0x0
    800054d4:	fcc080e7          	jalr	-52(ra) # 8000549c <_ZL9fibonaccim>
    800054d8:	00050913          	mv	s2,a0
    800054dc:	ffe48513          	addi	a0,s1,-2
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	fbc080e7          	jalr	-68(ra) # 8000549c <_ZL9fibonaccim>
    800054e8:	00a90533          	add	a0,s2,a0
}
    800054ec:	01813083          	ld	ra,24(sp)
    800054f0:	01013403          	ld	s0,16(sp)
    800054f4:	00813483          	ld	s1,8(sp)
    800054f8:	00013903          	ld	s2,0(sp)
    800054fc:	02010113          	addi	sp,sp,32
    80005500:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005504:	ffffc097          	auipc	ra,0xffffc
    80005508:	d90080e7          	jalr	-624(ra) # 80001294 <_Z15thread_dispatchv>
    8000550c:	fc1ff06f          	j	800054cc <_ZL9fibonaccim+0x30>

0000000080005510 <_ZL11workerBodyDPv>:
    printString("C finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005510:	fe010113          	addi	sp,sp,-32
    80005514:	00113c23          	sd	ra,24(sp)
    80005518:	00813823          	sd	s0,16(sp)
    8000551c:	00913423          	sd	s1,8(sp)
    80005520:	01213023          	sd	s2,0(sp)
    80005524:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005528:	00a00493          	li	s1,10
    8000552c:	0400006f          	j	8000556c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005530:	00005517          	auipc	a0,0x5
    80005534:	01050513          	addi	a0,a0,16 # 8000a540 <CONSOLE_STATUS+0x530>
    80005538:	00001097          	auipc	ra,0x1
    8000553c:	dc8080e7          	jalr	-568(ra) # 80006300 <_Z11printStringPKc>
    80005540:	00000613          	li	a2,0
    80005544:	00a00593          	li	a1,10
    80005548:	00048513          	mv	a0,s1
    8000554c:	00001097          	auipc	ra,0x1
    80005550:	f64080e7          	jalr	-156(ra) # 800064b0 <_Z8printIntiii>
    80005554:	00005517          	auipc	a0,0x5
    80005558:	c2c50513          	addi	a0,a0,-980 # 8000a180 <CONSOLE_STATUS+0x170>
    8000555c:	00001097          	auipc	ra,0x1
    80005560:	da4080e7          	jalr	-604(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005564:	0014849b          	addiw	s1,s1,1
    80005568:	0ff4f493          	andi	s1,s1,255
    8000556c:	00c00793          	li	a5,12
    80005570:	fc97f0e3          	bgeu	a5,s1,80005530 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005574:	00005517          	auipc	a0,0x5
    80005578:	fd450513          	addi	a0,a0,-44 # 8000a548 <CONSOLE_STATUS+0x538>
    8000557c:	00001097          	auipc	ra,0x1
    80005580:	d84080e7          	jalr	-636(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005584:	00500313          	li	t1,5
    thread_dispatch();
    80005588:	ffffc097          	auipc	ra,0xffffc
    8000558c:	d0c080e7          	jalr	-756(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005590:	01000513          	li	a0,16
    80005594:	00000097          	auipc	ra,0x0
    80005598:	f08080e7          	jalr	-248(ra) # 8000549c <_ZL9fibonaccim>
    8000559c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800055a0:	00005517          	auipc	a0,0x5
    800055a4:	fb850513          	addi	a0,a0,-72 # 8000a558 <CONSOLE_STATUS+0x548>
    800055a8:	00001097          	auipc	ra,0x1
    800055ac:	d58080e7          	jalr	-680(ra) # 80006300 <_Z11printStringPKc>
    800055b0:	00000613          	li	a2,0
    800055b4:	00a00593          	li	a1,10
    800055b8:	0009051b          	sext.w	a0,s2
    800055bc:	00001097          	auipc	ra,0x1
    800055c0:	ef4080e7          	jalr	-268(ra) # 800064b0 <_Z8printIntiii>
    800055c4:	00005517          	auipc	a0,0x5
    800055c8:	bbc50513          	addi	a0,a0,-1092 # 8000a180 <CONSOLE_STATUS+0x170>
    800055cc:	00001097          	auipc	ra,0x1
    800055d0:	d34080e7          	jalr	-716(ra) # 80006300 <_Z11printStringPKc>
    800055d4:	0400006f          	j	80005614 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800055d8:	00005517          	auipc	a0,0x5
    800055dc:	f6850513          	addi	a0,a0,-152 # 8000a540 <CONSOLE_STATUS+0x530>
    800055e0:	00001097          	auipc	ra,0x1
    800055e4:	d20080e7          	jalr	-736(ra) # 80006300 <_Z11printStringPKc>
    800055e8:	00000613          	li	a2,0
    800055ec:	00a00593          	li	a1,10
    800055f0:	00048513          	mv	a0,s1
    800055f4:	00001097          	auipc	ra,0x1
    800055f8:	ebc080e7          	jalr	-324(ra) # 800064b0 <_Z8printIntiii>
    800055fc:	00005517          	auipc	a0,0x5
    80005600:	b8450513          	addi	a0,a0,-1148 # 8000a180 <CONSOLE_STATUS+0x170>
    80005604:	00001097          	auipc	ra,0x1
    80005608:	cfc080e7          	jalr	-772(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000560c:	0014849b          	addiw	s1,s1,1
    80005610:	0ff4f493          	andi	s1,s1,255
    80005614:	00f00793          	li	a5,15
    80005618:	fc97f0e3          	bgeu	a5,s1,800055d8 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000561c:	00005517          	auipc	a0,0x5
    80005620:	f4c50513          	addi	a0,a0,-180 # 8000a568 <CONSOLE_STATUS+0x558>
    80005624:	00001097          	auipc	ra,0x1
    80005628:	cdc080e7          	jalr	-804(ra) # 80006300 <_Z11printStringPKc>
    finishedD = true;
    8000562c:	00100793          	li	a5,1
    80005630:	00035717          	auipc	a4,0x35
    80005634:	9ef70023          	sb	a5,-1568(a4) # 8003a010 <_ZL9finishedD>
    thread_dispatch();
    80005638:	ffffc097          	auipc	ra,0xffffc
    8000563c:	c5c080e7          	jalr	-932(ra) # 80001294 <_Z15thread_dispatchv>
}
    80005640:	01813083          	ld	ra,24(sp)
    80005644:	01013403          	ld	s0,16(sp)
    80005648:	00813483          	ld	s1,8(sp)
    8000564c:	00013903          	ld	s2,0(sp)
    80005650:	02010113          	addi	sp,sp,32
    80005654:	00008067          	ret

0000000080005658 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005658:	fe010113          	addi	sp,sp,-32
    8000565c:	00113c23          	sd	ra,24(sp)
    80005660:	00813823          	sd	s0,16(sp)
    80005664:	00913423          	sd	s1,8(sp)
    80005668:	01213023          	sd	s2,0(sp)
    8000566c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005670:	00000493          	li	s1,0
    80005674:	0400006f          	j	800056b4 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005678:	00005517          	auipc	a0,0x5
    8000567c:	e8850513          	addi	a0,a0,-376 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80005680:	00001097          	auipc	ra,0x1
    80005684:	c80080e7          	jalr	-896(ra) # 80006300 <_Z11printStringPKc>
    80005688:	00000613          	li	a2,0
    8000568c:	00a00593          	li	a1,10
    80005690:	00048513          	mv	a0,s1
    80005694:	00001097          	auipc	ra,0x1
    80005698:	e1c080e7          	jalr	-484(ra) # 800064b0 <_Z8printIntiii>
    8000569c:	00005517          	auipc	a0,0x5
    800056a0:	ae450513          	addi	a0,a0,-1308 # 8000a180 <CONSOLE_STATUS+0x170>
    800056a4:	00001097          	auipc	ra,0x1
    800056a8:	c5c080e7          	jalr	-932(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800056ac:	0014849b          	addiw	s1,s1,1
    800056b0:	0ff4f493          	andi	s1,s1,255
    800056b4:	00200793          	li	a5,2
    800056b8:	fc97f0e3          	bgeu	a5,s1,80005678 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    800056bc:	00005517          	auipc	a0,0x5
    800056c0:	e4c50513          	addi	a0,a0,-436 # 8000a508 <CONSOLE_STATUS+0x4f8>
    800056c4:	00001097          	auipc	ra,0x1
    800056c8:	c3c080e7          	jalr	-964(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800056cc:	00700313          	li	t1,7
    thread_dispatch();
    800056d0:	ffffc097          	auipc	ra,0xffffc
    800056d4:	bc4080e7          	jalr	-1084(ra) # 80001294 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800056d8:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    800056dc:	00005517          	auipc	a0,0x5
    800056e0:	e3c50513          	addi	a0,a0,-452 # 8000a518 <CONSOLE_STATUS+0x508>
    800056e4:	00001097          	auipc	ra,0x1
    800056e8:	c1c080e7          	jalr	-996(ra) # 80006300 <_Z11printStringPKc>
    800056ec:	00000613          	li	a2,0
    800056f0:	00a00593          	li	a1,10
    800056f4:	0009051b          	sext.w	a0,s2
    800056f8:	00001097          	auipc	ra,0x1
    800056fc:	db8080e7          	jalr	-584(ra) # 800064b0 <_Z8printIntiii>
    80005700:	00005517          	auipc	a0,0x5
    80005704:	a8050513          	addi	a0,a0,-1408 # 8000a180 <CONSOLE_STATUS+0x170>
    80005708:	00001097          	auipc	ra,0x1
    8000570c:	bf8080e7          	jalr	-1032(ra) # 80006300 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005710:	00c00513          	li	a0,12
    80005714:	00000097          	auipc	ra,0x0
    80005718:	d88080e7          	jalr	-632(ra) # 8000549c <_ZL9fibonaccim>
    8000571c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005720:	00005517          	auipc	a0,0x5
    80005724:	e0050513          	addi	a0,a0,-512 # 8000a520 <CONSOLE_STATUS+0x510>
    80005728:	00001097          	auipc	ra,0x1
    8000572c:	bd8080e7          	jalr	-1064(ra) # 80006300 <_Z11printStringPKc>
    80005730:	00000613          	li	a2,0
    80005734:	00a00593          	li	a1,10
    80005738:	0009051b          	sext.w	a0,s2
    8000573c:	00001097          	auipc	ra,0x1
    80005740:	d74080e7          	jalr	-652(ra) # 800064b0 <_Z8printIntiii>
    80005744:	00005517          	auipc	a0,0x5
    80005748:	a3c50513          	addi	a0,a0,-1476 # 8000a180 <CONSOLE_STATUS+0x170>
    8000574c:	00001097          	auipc	ra,0x1
    80005750:	bb4080e7          	jalr	-1100(ra) # 80006300 <_Z11printStringPKc>
    80005754:	0400006f          	j	80005794 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005758:	00005517          	auipc	a0,0x5
    8000575c:	da850513          	addi	a0,a0,-600 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80005760:	00001097          	auipc	ra,0x1
    80005764:	ba0080e7          	jalr	-1120(ra) # 80006300 <_Z11printStringPKc>
    80005768:	00000613          	li	a2,0
    8000576c:	00a00593          	li	a1,10
    80005770:	00048513          	mv	a0,s1
    80005774:	00001097          	auipc	ra,0x1
    80005778:	d3c080e7          	jalr	-708(ra) # 800064b0 <_Z8printIntiii>
    8000577c:	00005517          	auipc	a0,0x5
    80005780:	a0450513          	addi	a0,a0,-1532 # 8000a180 <CONSOLE_STATUS+0x170>
    80005784:	00001097          	auipc	ra,0x1
    80005788:	b7c080e7          	jalr	-1156(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000578c:	0014849b          	addiw	s1,s1,1
    80005790:	0ff4f493          	andi	s1,s1,255
    80005794:	00500793          	li	a5,5
    80005798:	fc97f0e3          	bgeu	a5,s1,80005758 <_ZL11workerBodyCPv+0x100>
    printString("C finished!\n");
    8000579c:	00005517          	auipc	a0,0x5
    800057a0:	d9450513          	addi	a0,a0,-620 # 8000a530 <CONSOLE_STATUS+0x520>
    800057a4:	00001097          	auipc	ra,0x1
    800057a8:	b5c080e7          	jalr	-1188(ra) # 80006300 <_Z11printStringPKc>
    finishedC = true;
    800057ac:	00100793          	li	a5,1
    800057b0:	00035717          	auipc	a4,0x35
    800057b4:	86f700a3          	sb	a5,-1951(a4) # 8003a011 <_ZL9finishedC>
    thread_dispatch();
    800057b8:	ffffc097          	auipc	ra,0xffffc
    800057bc:	adc080e7          	jalr	-1316(ra) # 80001294 <_Z15thread_dispatchv>
}
    800057c0:	01813083          	ld	ra,24(sp)
    800057c4:	01013403          	ld	s0,16(sp)
    800057c8:	00813483          	ld	s1,8(sp)
    800057cc:	00013903          	ld	s2,0(sp)
    800057d0:	02010113          	addi	sp,sp,32
    800057d4:	00008067          	ret

00000000800057d8 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    800057d8:	fe010113          	addi	sp,sp,-32
    800057dc:	00113c23          	sd	ra,24(sp)
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	01213023          	sd	s2,0(sp)
    800057ec:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800057f0:	00000913          	li	s2,0
    800057f4:	0380006f          	j	8000582c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800057f8:	ffffc097          	auipc	ra,0xffffc
    800057fc:	a9c080e7          	jalr	-1380(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005800:	00148493          	addi	s1,s1,1
    80005804:	000027b7          	lui	a5,0x2
    80005808:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000580c:	0097ee63          	bltu	a5,s1,80005828 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005810:	00000713          	li	a4,0
    80005814:	000077b7          	lui	a5,0x7
    80005818:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000581c:	fce7eee3          	bltu	a5,a4,800057f8 <_ZL11workerBodyBPv+0x20>
    80005820:	00170713          	addi	a4,a4,1
    80005824:	ff1ff06f          	j	80005814 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80005828:	00190913          	addi	s2,s2,1
    8000582c:	00f00793          	li	a5,15
    80005830:	0527e063          	bltu	a5,s2,80005870 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005834:	00005517          	auipc	a0,0x5
    80005838:	cb450513          	addi	a0,a0,-844 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    8000583c:	00001097          	auipc	ra,0x1
    80005840:	ac4080e7          	jalr	-1340(ra) # 80006300 <_Z11printStringPKc>
    80005844:	00000613          	li	a2,0
    80005848:	00a00593          	li	a1,10
    8000584c:	0009051b          	sext.w	a0,s2
    80005850:	00001097          	auipc	ra,0x1
    80005854:	c60080e7          	jalr	-928(ra) # 800064b0 <_Z8printIntiii>
    80005858:	00005517          	auipc	a0,0x5
    8000585c:	92850513          	addi	a0,a0,-1752 # 8000a180 <CONSOLE_STATUS+0x170>
    80005860:	00001097          	auipc	ra,0x1
    80005864:	aa0080e7          	jalr	-1376(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005868:	00000493          	li	s1,0
    8000586c:	f99ff06f          	j	80005804 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80005870:	00005517          	auipc	a0,0x5
    80005874:	c8050513          	addi	a0,a0,-896 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80005878:	00001097          	auipc	ra,0x1
    8000587c:	a88080e7          	jalr	-1400(ra) # 80006300 <_Z11printStringPKc>
    finishedB = true;
    80005880:	00100793          	li	a5,1
    80005884:	00034717          	auipc	a4,0x34
    80005888:	78f70723          	sb	a5,1934(a4) # 8003a012 <_ZL9finishedB>
    thread_dispatch();
    8000588c:	ffffc097          	auipc	ra,0xffffc
    80005890:	a08080e7          	jalr	-1528(ra) # 80001294 <_Z15thread_dispatchv>
}
    80005894:	01813083          	ld	ra,24(sp)
    80005898:	01013403          	ld	s0,16(sp)
    8000589c:	00813483          	ld	s1,8(sp)
    800058a0:	00013903          	ld	s2,0(sp)
    800058a4:	02010113          	addi	sp,sp,32
    800058a8:	00008067          	ret

00000000800058ac <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    800058ac:	fe010113          	addi	sp,sp,-32
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00813823          	sd	s0,16(sp)
    800058b8:	00913423          	sd	s1,8(sp)
    800058bc:	01213023          	sd	s2,0(sp)
    800058c0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800058c4:	00000913          	li	s2,0
    800058c8:	0380006f          	j	80005900 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	9c8080e7          	jalr	-1592(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800058d4:	00148493          	addi	s1,s1,1
    800058d8:	000027b7          	lui	a5,0x2
    800058dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800058e0:	0097ee63          	bltu	a5,s1,800058fc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800058e4:	00000713          	li	a4,0
    800058e8:	000077b7          	lui	a5,0x7
    800058ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800058f0:	fce7eee3          	bltu	a5,a4,800058cc <_ZL11workerBodyAPv+0x20>
    800058f4:	00170713          	addi	a4,a4,1
    800058f8:	ff1ff06f          	j	800058e8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800058fc:	00190913          	addi	s2,s2,1
    80005900:	00900793          	li	a5,9
    80005904:	0527e063          	bltu	a5,s2,80005944 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005908:	00005517          	auipc	a0,0x5
    8000590c:	bc850513          	addi	a0,a0,-1080 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80005910:	00001097          	auipc	ra,0x1
    80005914:	9f0080e7          	jalr	-1552(ra) # 80006300 <_Z11printStringPKc>
    80005918:	00000613          	li	a2,0
    8000591c:	00a00593          	li	a1,10
    80005920:	0009051b          	sext.w	a0,s2
    80005924:	00001097          	auipc	ra,0x1
    80005928:	b8c080e7          	jalr	-1140(ra) # 800064b0 <_Z8printIntiii>
    8000592c:	00005517          	auipc	a0,0x5
    80005930:	85450513          	addi	a0,a0,-1964 # 8000a180 <CONSOLE_STATUS+0x170>
    80005934:	00001097          	auipc	ra,0x1
    80005938:	9cc080e7          	jalr	-1588(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000593c:	00000493          	li	s1,0
    80005940:	f99ff06f          	j	800058d8 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80005944:	00005517          	auipc	a0,0x5
    80005948:	b9450513          	addi	a0,a0,-1132 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    8000594c:	00001097          	auipc	ra,0x1
    80005950:	9b4080e7          	jalr	-1612(ra) # 80006300 <_Z11printStringPKc>
    finishedA = true;
    80005954:	00100793          	li	a5,1
    80005958:	00034717          	auipc	a4,0x34
    8000595c:	6af70da3          	sb	a5,1723(a4) # 8003a013 <_ZL9finishedA>
}
    80005960:	01813083          	ld	ra,24(sp)
    80005964:	01013403          	ld	s0,16(sp)
    80005968:	00813483          	ld	s1,8(sp)
    8000596c:	00013903          	ld	s2,0(sp)
    80005970:	02010113          	addi	sp,sp,32
    80005974:	00008067          	ret

0000000080005978 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80005978:	fd010113          	addi	sp,sp,-48
    8000597c:	02113423          	sd	ra,40(sp)
    80005980:	02813023          	sd	s0,32(sp)
    80005984:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80005988:	00000613          	li	a2,0
    8000598c:	00000597          	auipc	a1,0x0
    80005990:	f2058593          	addi	a1,a1,-224 # 800058ac <_ZL11workerBodyAPv>
    80005994:	fd040513          	addi	a0,s0,-48
    80005998:	ffffc097          	auipc	ra,0xffffc
    8000599c:	84c080e7          	jalr	-1972(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800059a0:	00005517          	auipc	a0,0x5
    800059a4:	bd850513          	addi	a0,a0,-1064 # 8000a578 <CONSOLE_STATUS+0x568>
    800059a8:	00001097          	auipc	ra,0x1
    800059ac:	958080e7          	jalr	-1704(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800059b0:	00000613          	li	a2,0
    800059b4:	00000597          	auipc	a1,0x0
    800059b8:	e2458593          	addi	a1,a1,-476 # 800057d8 <_ZL11workerBodyBPv>
    800059bc:	fd840513          	addi	a0,s0,-40
    800059c0:	ffffc097          	auipc	ra,0xffffc
    800059c4:	824080e7          	jalr	-2012(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800059c8:	00005517          	auipc	a0,0x5
    800059cc:	bc850513          	addi	a0,a0,-1080 # 8000a590 <CONSOLE_STATUS+0x580>
    800059d0:	00001097          	auipc	ra,0x1
    800059d4:	930080e7          	jalr	-1744(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800059d8:	00000613          	li	a2,0
    800059dc:	00000597          	auipc	a1,0x0
    800059e0:	c7c58593          	addi	a1,a1,-900 # 80005658 <_ZL11workerBodyCPv>
    800059e4:	fe040513          	addi	a0,s0,-32
    800059e8:	ffffb097          	auipc	ra,0xffffb
    800059ec:	7fc080e7          	jalr	2044(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800059f0:	00005517          	auipc	a0,0x5
    800059f4:	bb850513          	addi	a0,a0,-1096 # 8000a5a8 <CONSOLE_STATUS+0x598>
    800059f8:	00001097          	auipc	ra,0x1
    800059fc:	908080e7          	jalr	-1784(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a00:	00000613          	li	a2,0
    80005a04:	00000597          	auipc	a1,0x0
    80005a08:	b0c58593          	addi	a1,a1,-1268 # 80005510 <_ZL11workerBodyDPv>
    80005a0c:	fe840513          	addi	a0,s0,-24
    80005a10:	ffffb097          	auipc	ra,0xffffb
    80005a14:	7d4080e7          	jalr	2004(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80005a18:	00005517          	auipc	a0,0x5
    80005a1c:	ba850513          	addi	a0,a0,-1112 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80005a20:	00001097          	auipc	ra,0x1
    80005a24:	8e0080e7          	jalr	-1824(ra) # 80006300 <_Z11printStringPKc>
    80005a28:	00c0006f          	j	80005a34 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a2c:	ffffc097          	auipc	ra,0xffffc
    80005a30:	868080e7          	jalr	-1944(ra) # 80001294 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a34:	00034797          	auipc	a5,0x34
    80005a38:	5df7c783          	lbu	a5,1503(a5) # 8003a013 <_ZL9finishedA>
    80005a3c:	fe0788e3          	beqz	a5,80005a2c <_Z18Threads_C_API_testv+0xb4>
    80005a40:	00034797          	auipc	a5,0x34
    80005a44:	5d27c783          	lbu	a5,1490(a5) # 8003a012 <_ZL9finishedB>
    80005a48:	fe0782e3          	beqz	a5,80005a2c <_Z18Threads_C_API_testv+0xb4>
    80005a4c:	00034797          	auipc	a5,0x34
    80005a50:	5c57c783          	lbu	a5,1477(a5) # 8003a011 <_ZL9finishedC>
    80005a54:	fc078ce3          	beqz	a5,80005a2c <_Z18Threads_C_API_testv+0xb4>
    80005a58:	00034797          	auipc	a5,0x34
    80005a5c:	5b87c783          	lbu	a5,1464(a5) # 8003a010 <_ZL9finishedD>
    80005a60:	fc0786e3          	beqz	a5,80005a2c <_Z18Threads_C_API_testv+0xb4>
    }

}
    80005a64:	02813083          	ld	ra,40(sp)
    80005a68:	02013403          	ld	s0,32(sp)
    80005a6c:	03010113          	addi	sp,sp,48
    80005a70:	00008067          	ret

0000000080005a74 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80005a74:	fd010113          	addi	sp,sp,-48
    80005a78:	02113423          	sd	ra,40(sp)
    80005a7c:	02813023          	sd	s0,32(sp)
    80005a80:	00913c23          	sd	s1,24(sp)
    80005a84:	01213823          	sd	s2,16(sp)
    80005a88:	01313423          	sd	s3,8(sp)
    80005a8c:	03010413          	addi	s0,sp,48
    80005a90:	00050993          	mv	s3,a0
    80005a94:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80005a98:	00000913          	li	s2,0
    80005a9c:	00c0006f          	j	80005aa8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005aa0:	ffffd097          	auipc	ra,0xffffd
    80005aa4:	d48080e7          	jalr	-696(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80005aa8:	ffffc097          	auipc	ra,0xffffc
    80005aac:	9ec080e7          	jalr	-1556(ra) # 80001494 <_Z4getcv>
    80005ab0:	0005059b          	sext.w	a1,a0
    80005ab4:	01b00793          	li	a5,27
    80005ab8:	02f58a63          	beq	a1,a5,80005aec <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80005abc:	0084b503          	ld	a0,8(s1)
    80005ac0:	00001097          	auipc	ra,0x1
    80005ac4:	c64080e7          	jalr	-924(ra) # 80006724 <_ZN9BufferCPP3putEi>
        i++;
    80005ac8:	0019071b          	addiw	a4,s2,1
    80005acc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005ad0:	0004a683          	lw	a3,0(s1)
    80005ad4:	0026979b          	slliw	a5,a3,0x2
    80005ad8:	00d787bb          	addw	a5,a5,a3
    80005adc:	0017979b          	slliw	a5,a5,0x1
    80005ae0:	02f767bb          	remw	a5,a4,a5
    80005ae4:	fc0792e3          	bnez	a5,80005aa8 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80005ae8:	fb9ff06f          	j	80005aa0 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80005aec:	00100793          	li	a5,1
    80005af0:	00034717          	auipc	a4,0x34
    80005af4:	52f72423          	sw	a5,1320(a4) # 8003a018 <_ZL9threadEnd>
    td->buffer->put('!');
    80005af8:	0209b783          	ld	a5,32(s3)
    80005afc:	02100593          	li	a1,33
    80005b00:	0087b503          	ld	a0,8(a5)
    80005b04:	00001097          	auipc	ra,0x1
    80005b08:	c20080e7          	jalr	-992(ra) # 80006724 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80005b0c:	0104b503          	ld	a0,16(s1)
    80005b10:	ffffd097          	auipc	ra,0xffffd
    80005b14:	eb0080e7          	jalr	-336(ra) # 800029c0 <_ZN9Semaphore6signalEv>
}
    80005b18:	02813083          	ld	ra,40(sp)
    80005b1c:	02013403          	ld	s0,32(sp)
    80005b20:	01813483          	ld	s1,24(sp)
    80005b24:	01013903          	ld	s2,16(sp)
    80005b28:	00813983          	ld	s3,8(sp)
    80005b2c:	03010113          	addi	sp,sp,48
    80005b30:	00008067          	ret

0000000080005b34 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80005b34:	fe010113          	addi	sp,sp,-32
    80005b38:	00113c23          	sd	ra,24(sp)
    80005b3c:	00813823          	sd	s0,16(sp)
    80005b40:	00913423          	sd	s1,8(sp)
    80005b44:	01213023          	sd	s2,0(sp)
    80005b48:	02010413          	addi	s0,sp,32
    80005b4c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005b50:	00000913          	li	s2,0
    80005b54:	00c0006f          	j	80005b60 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80005b58:	ffffd097          	auipc	ra,0xffffd
    80005b5c:	c90080e7          	jalr	-880(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80005b60:	00034797          	auipc	a5,0x34
    80005b64:	4b87a783          	lw	a5,1208(a5) # 8003a018 <_ZL9threadEnd>
    80005b68:	02079e63          	bnez	a5,80005ba4 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80005b6c:	0004a583          	lw	a1,0(s1)
    80005b70:	0305859b          	addiw	a1,a1,48
    80005b74:	0084b503          	ld	a0,8(s1)
    80005b78:	00001097          	auipc	ra,0x1
    80005b7c:	bac080e7          	jalr	-1108(ra) # 80006724 <_ZN9BufferCPP3putEi>
        i++;
    80005b80:	0019071b          	addiw	a4,s2,1
    80005b84:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80005b88:	0004a683          	lw	a3,0(s1)
    80005b8c:	0026979b          	slliw	a5,a3,0x2
    80005b90:	00d787bb          	addw	a5,a5,a3
    80005b94:	0017979b          	slliw	a5,a5,0x1
    80005b98:	02f767bb          	remw	a5,a4,a5
    80005b9c:	fc0792e3          	bnez	a5,80005b60 <_ZN12ProducerSync8producerEPv+0x2c>
    80005ba0:	fb9ff06f          	j	80005b58 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80005ba4:	0104b503          	ld	a0,16(s1)
    80005ba8:	ffffd097          	auipc	ra,0xffffd
    80005bac:	e18080e7          	jalr	-488(ra) # 800029c0 <_ZN9Semaphore6signalEv>
}
    80005bb0:	01813083          	ld	ra,24(sp)
    80005bb4:	01013403          	ld	s0,16(sp)
    80005bb8:	00813483          	ld	s1,8(sp)
    80005bbc:	00013903          	ld	s2,0(sp)
    80005bc0:	02010113          	addi	sp,sp,32
    80005bc4:	00008067          	ret

0000000080005bc8 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80005bc8:	fd010113          	addi	sp,sp,-48
    80005bcc:	02113423          	sd	ra,40(sp)
    80005bd0:	02813023          	sd	s0,32(sp)
    80005bd4:	00913c23          	sd	s1,24(sp)
    80005bd8:	01213823          	sd	s2,16(sp)
    80005bdc:	01313423          	sd	s3,8(sp)
    80005be0:	01413023          	sd	s4,0(sp)
    80005be4:	03010413          	addi	s0,sp,48
    80005be8:	00050993          	mv	s3,a0
    80005bec:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80005bf0:	00000a13          	li	s4,0
    80005bf4:	01c0006f          	j	80005c10 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80005bf8:	ffffd097          	auipc	ra,0xffffd
    80005bfc:	bf0080e7          	jalr	-1040(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    80005c00:	0500006f          	j	80005c50 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80005c04:	00a00513          	li	a0,10
    80005c08:	ffffc097          	auipc	ra,0xffffc
    80005c0c:	8cc080e7          	jalr	-1844(ra) # 800014d4 <_Z4putcc>
    while (!threadEnd) {
    80005c10:	00034797          	auipc	a5,0x34
    80005c14:	4087a783          	lw	a5,1032(a5) # 8003a018 <_ZL9threadEnd>
    80005c18:	06079263          	bnez	a5,80005c7c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80005c1c:	00893503          	ld	a0,8(s2)
    80005c20:	00001097          	auipc	ra,0x1
    80005c24:	b94080e7          	jalr	-1132(ra) # 800067b4 <_ZN9BufferCPP3getEv>
        i++;
    80005c28:	001a049b          	addiw	s1,s4,1
    80005c2c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80005c30:	0ff57513          	andi	a0,a0,255
    80005c34:	ffffc097          	auipc	ra,0xffffc
    80005c38:	8a0080e7          	jalr	-1888(ra) # 800014d4 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80005c3c:	00092703          	lw	a4,0(s2)
    80005c40:	0027179b          	slliw	a5,a4,0x2
    80005c44:	00e787bb          	addw	a5,a5,a4
    80005c48:	02f4e7bb          	remw	a5,s1,a5
    80005c4c:	fa0786e3          	beqz	a5,80005bf8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80005c50:	05000793          	li	a5,80
    80005c54:	02f4e4bb          	remw	s1,s1,a5
    80005c58:	fa049ce3          	bnez	s1,80005c10 <_ZN12ConsumerSync8consumerEPv+0x48>
    80005c5c:	fa9ff06f          	j	80005c04 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80005c60:	0209b783          	ld	a5,32(s3)
    80005c64:	0087b503          	ld	a0,8(a5)
    80005c68:	00001097          	auipc	ra,0x1
    80005c6c:	b4c080e7          	jalr	-1204(ra) # 800067b4 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80005c70:	0ff57513          	andi	a0,a0,255
    80005c74:	ffffd097          	auipc	ra,0xffffd
    80005c78:	df8080e7          	jalr	-520(ra) # 80002a6c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80005c7c:	0209b783          	ld	a5,32(s3)
    80005c80:	0087b503          	ld	a0,8(a5)
    80005c84:	00001097          	auipc	ra,0x1
    80005c88:	bbc080e7          	jalr	-1092(ra) # 80006840 <_ZN9BufferCPP6getCntEv>
    80005c8c:	fca04ae3          	bgtz	a0,80005c60 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80005c90:	01093503          	ld	a0,16(s2)
    80005c94:	ffffd097          	auipc	ra,0xffffd
    80005c98:	d2c080e7          	jalr	-724(ra) # 800029c0 <_ZN9Semaphore6signalEv>
}
    80005c9c:	02813083          	ld	ra,40(sp)
    80005ca0:	02013403          	ld	s0,32(sp)
    80005ca4:	01813483          	ld	s1,24(sp)
    80005ca8:	01013903          	ld	s2,16(sp)
    80005cac:	00813983          	ld	s3,8(sp)
    80005cb0:	00013a03          	ld	s4,0(sp)
    80005cb4:	03010113          	addi	sp,sp,48
    80005cb8:	00008067          	ret

0000000080005cbc <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80005cbc:	f8010113          	addi	sp,sp,-128
    80005cc0:	06113c23          	sd	ra,120(sp)
    80005cc4:	06813823          	sd	s0,112(sp)
    80005cc8:	06913423          	sd	s1,104(sp)
    80005ccc:	07213023          	sd	s2,96(sp)
    80005cd0:	05313c23          	sd	s3,88(sp)
    80005cd4:	05413823          	sd	s4,80(sp)
    80005cd8:	05513423          	sd	s5,72(sp)
    80005cdc:	05613023          	sd	s6,64(sp)
    80005ce0:	03713c23          	sd	s7,56(sp)
    80005ce4:	03813823          	sd	s8,48(sp)
    80005ce8:	03913423          	sd	s9,40(sp)
    80005cec:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80005cf0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80005cf4:	00004517          	auipc	a0,0x4
    80005cf8:	6f450513          	addi	a0,a0,1780 # 8000a3e8 <CONSOLE_STATUS+0x3d8>
    80005cfc:	00000097          	auipc	ra,0x0
    80005d00:	604080e7          	jalr	1540(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    80005d04:	01e00593          	li	a1,30
    80005d08:	f8040493          	addi	s1,s0,-128
    80005d0c:	00048513          	mv	a0,s1
    80005d10:	00000097          	auipc	ra,0x0
    80005d14:	678080e7          	jalr	1656(ra) # 80006388 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80005d18:	00048513          	mv	a0,s1
    80005d1c:	00000097          	auipc	ra,0x0
    80005d20:	744080e7          	jalr	1860(ra) # 80006460 <_Z11stringToIntPKc>
    80005d24:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80005d28:	00004517          	auipc	a0,0x4
    80005d2c:	6e050513          	addi	a0,a0,1760 # 8000a408 <CONSOLE_STATUS+0x3f8>
    80005d30:	00000097          	auipc	ra,0x0
    80005d34:	5d0080e7          	jalr	1488(ra) # 80006300 <_Z11printStringPKc>
    getString(input, 30);
    80005d38:	01e00593          	li	a1,30
    80005d3c:	00048513          	mv	a0,s1
    80005d40:	00000097          	auipc	ra,0x0
    80005d44:	648080e7          	jalr	1608(ra) # 80006388 <_Z9getStringPci>
    n = stringToInt(input);
    80005d48:	00048513          	mv	a0,s1
    80005d4c:	00000097          	auipc	ra,0x0
    80005d50:	714080e7          	jalr	1812(ra) # 80006460 <_Z11stringToIntPKc>
    80005d54:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80005d58:	00004517          	auipc	a0,0x4
    80005d5c:	6d050513          	addi	a0,a0,1744 # 8000a428 <CONSOLE_STATUS+0x418>
    80005d60:	00000097          	auipc	ra,0x0
    80005d64:	5a0080e7          	jalr	1440(ra) # 80006300 <_Z11printStringPKc>
    80005d68:	00000613          	li	a2,0
    80005d6c:	00a00593          	li	a1,10
    80005d70:	00090513          	mv	a0,s2
    80005d74:	00000097          	auipc	ra,0x0
    80005d78:	73c080e7          	jalr	1852(ra) # 800064b0 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80005d7c:	00004517          	auipc	a0,0x4
    80005d80:	6c450513          	addi	a0,a0,1732 # 8000a440 <CONSOLE_STATUS+0x430>
    80005d84:	00000097          	auipc	ra,0x0
    80005d88:	57c080e7          	jalr	1404(ra) # 80006300 <_Z11printStringPKc>
    80005d8c:	00000613          	li	a2,0
    80005d90:	00a00593          	li	a1,10
    80005d94:	00048513          	mv	a0,s1
    80005d98:	00000097          	auipc	ra,0x0
    80005d9c:	718080e7          	jalr	1816(ra) # 800064b0 <_Z8printIntiii>
    printString(".\n");
    80005da0:	00004517          	auipc	a0,0x4
    80005da4:	6b850513          	addi	a0,a0,1720 # 8000a458 <CONSOLE_STATUS+0x448>
    80005da8:	00000097          	auipc	ra,0x0
    80005dac:	558080e7          	jalr	1368(ra) # 80006300 <_Z11printStringPKc>
    if(threadNum > n) {
    80005db0:	0324c463          	blt	s1,s2,80005dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80005db4:	03205c63          	blez	s2,80005dec <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80005db8:	03800513          	li	a0,56
    80005dbc:	ffffd097          	auipc	ra,0xffffd
    80005dc0:	8e4080e7          	jalr	-1820(ra) # 800026a0 <_Znwm>
    80005dc4:	00050a93          	mv	s5,a0
    80005dc8:	00048593          	mv	a1,s1
    80005dcc:	00001097          	auipc	ra,0x1
    80005dd0:	804080e7          	jalr	-2044(ra) # 800065d0 <_ZN9BufferCPPC1Ei>
    80005dd4:	0300006f          	j	80005e04 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80005dd8:	00004517          	auipc	a0,0x4
    80005ddc:	68850513          	addi	a0,a0,1672 # 8000a460 <CONSOLE_STATUS+0x450>
    80005de0:	00000097          	auipc	ra,0x0
    80005de4:	520080e7          	jalr	1312(ra) # 80006300 <_Z11printStringPKc>
        return;
    80005de8:	0140006f          	j	80005dfc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80005dec:	00004517          	auipc	a0,0x4
    80005df0:	6b450513          	addi	a0,a0,1716 # 8000a4a0 <CONSOLE_STATUS+0x490>
    80005df4:	00000097          	auipc	ra,0x0
    80005df8:	50c080e7          	jalr	1292(ra) # 80006300 <_Z11printStringPKc>
        return;
    80005dfc:	000b8113          	mv	sp,s7
    80005e00:	2380006f          	j	80006038 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80005e04:	01000513          	li	a0,16
    80005e08:	ffffd097          	auipc	ra,0xffffd
    80005e0c:	898080e7          	jalr	-1896(ra) # 800026a0 <_Znwm>
    80005e10:	00050493          	mv	s1,a0
    80005e14:	00000593          	li	a1,0
    80005e18:	ffffd097          	auipc	ra,0xffffd
    80005e1c:	b30080e7          	jalr	-1232(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80005e20:	00034797          	auipc	a5,0x34
    80005e24:	2097b023          	sd	s1,512(a5) # 8003a020 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80005e28:	00391793          	slli	a5,s2,0x3
    80005e2c:	00f78793          	addi	a5,a5,15
    80005e30:	ff07f793          	andi	a5,a5,-16
    80005e34:	40f10133          	sub	sp,sp,a5
    80005e38:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80005e3c:	0019071b          	addiw	a4,s2,1
    80005e40:	00171793          	slli	a5,a4,0x1
    80005e44:	00e787b3          	add	a5,a5,a4
    80005e48:	00379793          	slli	a5,a5,0x3
    80005e4c:	00f78793          	addi	a5,a5,15
    80005e50:	ff07f793          	andi	a5,a5,-16
    80005e54:	40f10133          	sub	sp,sp,a5
    80005e58:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80005e5c:	00191c13          	slli	s8,s2,0x1
    80005e60:	012c07b3          	add	a5,s8,s2
    80005e64:	00379793          	slli	a5,a5,0x3
    80005e68:	00fa07b3          	add	a5,s4,a5
    80005e6c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80005e70:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80005e74:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80005e78:	02800513          	li	a0,40
    80005e7c:	ffffd097          	auipc	ra,0xffffd
    80005e80:	824080e7          	jalr	-2012(ra) # 800026a0 <_Znwm>
    80005e84:	00050b13          	mv	s6,a0
    80005e88:	012c0c33          	add	s8,s8,s2
    80005e8c:	003c1c13          	slli	s8,s8,0x3
    80005e90:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80005e94:	ffffd097          	auipc	ra,0xffffd
    80005e98:	930080e7          	jalr	-1744(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80005e9c:	00007797          	auipc	a5,0x7
    80005ea0:	55c78793          	addi	a5,a5,1372 # 8000d3f8 <_ZTV12ConsumerSync+0x10>
    80005ea4:	00fb3023          	sd	a5,0(s6)
    80005ea8:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80005eac:	000b0513          	mv	a0,s6
    80005eb0:	ffffd097          	auipc	ra,0xffffd
    80005eb4:	960080e7          	jalr	-1696(ra) # 80002810 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005eb8:	00000493          	li	s1,0
    80005ebc:	0380006f          	j	80005ef4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005ec0:	00007797          	auipc	a5,0x7
    80005ec4:	51078793          	addi	a5,a5,1296 # 8000d3d0 <_ZTV12ProducerSync+0x10>
    80005ec8:	00fcb023          	sd	a5,0(s9)
    80005ecc:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80005ed0:	00349793          	slli	a5,s1,0x3
    80005ed4:	00f987b3          	add	a5,s3,a5
    80005ed8:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80005edc:	00349793          	slli	a5,s1,0x3
    80005ee0:	00f987b3          	add	a5,s3,a5
    80005ee4:	0007b503          	ld	a0,0(a5)
    80005ee8:	ffffd097          	auipc	ra,0xffffd
    80005eec:	928080e7          	jalr	-1752(ra) # 80002810 <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80005ef0:	0014849b          	addiw	s1,s1,1
    80005ef4:	0b24d063          	bge	s1,s2,80005f94 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80005ef8:	00149793          	slli	a5,s1,0x1
    80005efc:	009787b3          	add	a5,a5,s1
    80005f00:	00379793          	slli	a5,a5,0x3
    80005f04:	00fa07b3          	add	a5,s4,a5
    80005f08:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80005f0c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80005f10:	00034717          	auipc	a4,0x34
    80005f14:	11073703          	ld	a4,272(a4) # 8003a020 <_ZL10waitForAll>
    80005f18:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80005f1c:	02905863          	blez	s1,80005f4c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80005f20:	02800513          	li	a0,40
    80005f24:	ffffc097          	auipc	ra,0xffffc
    80005f28:	77c080e7          	jalr	1916(ra) # 800026a0 <_Znwm>
    80005f2c:	00050c93          	mv	s9,a0
    80005f30:	00149c13          	slli	s8,s1,0x1
    80005f34:	009c0c33          	add	s8,s8,s1
    80005f38:	003c1c13          	slli	s8,s8,0x3
    80005f3c:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80005f40:	ffffd097          	auipc	ra,0xffffd
    80005f44:	884080e7          	jalr	-1916(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80005f48:	f79ff06f          	j	80005ec0 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80005f4c:	02800513          	li	a0,40
    80005f50:	ffffc097          	auipc	ra,0xffffc
    80005f54:	750080e7          	jalr	1872(ra) # 800026a0 <_Znwm>
    80005f58:	00050c93          	mv	s9,a0
    80005f5c:	00149c13          	slli	s8,s1,0x1
    80005f60:	009c0c33          	add	s8,s8,s1
    80005f64:	003c1c13          	slli	s8,s8,0x3
    80005f68:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80005f6c:	ffffd097          	auipc	ra,0xffffd
    80005f70:	858080e7          	jalr	-1960(ra) # 800027c4 <_ZN6ThreadC1Ev>
    80005f74:	00007797          	auipc	a5,0x7
    80005f78:	43478793          	addi	a5,a5,1076 # 8000d3a8 <_ZTV16ProducerKeyboard+0x10>
    80005f7c:	00fcb023          	sd	a5,0(s9)
    80005f80:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80005f84:	00349793          	slli	a5,s1,0x3
    80005f88:	00f987b3          	add	a5,s3,a5
    80005f8c:	0197b023          	sd	s9,0(a5)
    80005f90:	f4dff06f          	j	80005edc <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80005f94:	ffffd097          	auipc	ra,0xffffd
    80005f98:	854080e7          	jalr	-1964(ra) # 800027e8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80005f9c:	00000493          	li	s1,0
    80005fa0:	00994e63          	blt	s2,s1,80005fbc <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80005fa4:	00034517          	auipc	a0,0x34
    80005fa8:	07c53503          	ld	a0,124(a0) # 8003a020 <_ZL10waitForAll>
    80005fac:	ffffd097          	auipc	ra,0xffffd
    80005fb0:	9e8080e7          	jalr	-1560(ra) # 80002994 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80005fb4:	0014849b          	addiw	s1,s1,1
    80005fb8:	fe9ff06f          	j	80005fa0 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80005fbc:	00000493          	li	s1,0
    80005fc0:	0080006f          	j	80005fc8 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80005fc4:	0014849b          	addiw	s1,s1,1
    80005fc8:	0324d263          	bge	s1,s2,80005fec <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80005fcc:	00349793          	slli	a5,s1,0x3
    80005fd0:	00f987b3          	add	a5,s3,a5
    80005fd4:	0007b503          	ld	a0,0(a5)
    80005fd8:	fe0506e3          	beqz	a0,80005fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80005fdc:	00053783          	ld	a5,0(a0)
    80005fe0:	0087b783          	ld	a5,8(a5)
    80005fe4:	000780e7          	jalr	a5
    80005fe8:	fddff06f          	j	80005fc4 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80005fec:	000b0a63          	beqz	s6,80006000 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80005ff0:	000b3783          	ld	a5,0(s6)
    80005ff4:	0087b783          	ld	a5,8(a5)
    80005ff8:	000b0513          	mv	a0,s6
    80005ffc:	000780e7          	jalr	a5
    delete waitForAll;
    80006000:	00034517          	auipc	a0,0x34
    80006004:	02053503          	ld	a0,32(a0) # 8003a020 <_ZL10waitForAll>
    80006008:	00050863          	beqz	a0,80006018 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    8000600c:	00053783          	ld	a5,0(a0)
    80006010:	0087b783          	ld	a5,8(a5)
    80006014:	000780e7          	jalr	a5
    delete buffer;
    80006018:	000a8e63          	beqz	s5,80006034 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    8000601c:	000a8513          	mv	a0,s5
    80006020:	00001097          	auipc	ra,0x1
    80006024:	8a8080e7          	jalr	-1880(ra) # 800068c8 <_ZN9BufferCPPD1Ev>
    80006028:	000a8513          	mv	a0,s5
    8000602c:	ffffc097          	auipc	ra,0xffffc
    80006030:	69c080e7          	jalr	1692(ra) # 800026c8 <_ZdlPv>
    80006034:	000b8113          	mv	sp,s7

}
    80006038:	f8040113          	addi	sp,s0,-128
    8000603c:	07813083          	ld	ra,120(sp)
    80006040:	07013403          	ld	s0,112(sp)
    80006044:	06813483          	ld	s1,104(sp)
    80006048:	06013903          	ld	s2,96(sp)
    8000604c:	05813983          	ld	s3,88(sp)
    80006050:	05013a03          	ld	s4,80(sp)
    80006054:	04813a83          	ld	s5,72(sp)
    80006058:	04013b03          	ld	s6,64(sp)
    8000605c:	03813b83          	ld	s7,56(sp)
    80006060:	03013c03          	ld	s8,48(sp)
    80006064:	02813c83          	ld	s9,40(sp)
    80006068:	08010113          	addi	sp,sp,128
    8000606c:	00008067          	ret
    80006070:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80006074:	000a8513          	mv	a0,s5
    80006078:	ffffc097          	auipc	ra,0xffffc
    8000607c:	650080e7          	jalr	1616(ra) # 800026c8 <_ZdlPv>
    80006080:	00048513          	mv	a0,s1
    80006084:	00035097          	auipc	ra,0x35
    80006088:	084080e7          	jalr	132(ra) # 8003b108 <_Unwind_Resume>
    8000608c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80006090:	00048513          	mv	a0,s1
    80006094:	ffffc097          	auipc	ra,0xffffc
    80006098:	634080e7          	jalr	1588(ra) # 800026c8 <_ZdlPv>
    8000609c:	00090513          	mv	a0,s2
    800060a0:	00035097          	auipc	ra,0x35
    800060a4:	068080e7          	jalr	104(ra) # 8003b108 <_Unwind_Resume>
    800060a8:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    800060ac:	000b0513          	mv	a0,s6
    800060b0:	ffffc097          	auipc	ra,0xffffc
    800060b4:	618080e7          	jalr	1560(ra) # 800026c8 <_ZdlPv>
    800060b8:	00048513          	mv	a0,s1
    800060bc:	00035097          	auipc	ra,0x35
    800060c0:	04c080e7          	jalr	76(ra) # 8003b108 <_Unwind_Resume>
    800060c4:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    800060c8:	000c8513          	mv	a0,s9
    800060cc:	ffffc097          	auipc	ra,0xffffc
    800060d0:	5fc080e7          	jalr	1532(ra) # 800026c8 <_ZdlPv>
    800060d4:	00048513          	mv	a0,s1
    800060d8:	00035097          	auipc	ra,0x35
    800060dc:	030080e7          	jalr	48(ra) # 8003b108 <_Unwind_Resume>
    800060e0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    800060e4:	000c8513          	mv	a0,s9
    800060e8:	ffffc097          	auipc	ra,0xffffc
    800060ec:	5e0080e7          	jalr	1504(ra) # 800026c8 <_ZdlPv>
    800060f0:	00048513          	mv	a0,s1
    800060f4:	00035097          	auipc	ra,0x35
    800060f8:	014080e7          	jalr	20(ra) # 8003b108 <_Unwind_Resume>

00000000800060fc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    800060fc:	ff010113          	addi	sp,sp,-16
    80006100:	00113423          	sd	ra,8(sp)
    80006104:	00813023          	sd	s0,0(sp)
    80006108:	01010413          	addi	s0,sp,16
    8000610c:	00007797          	auipc	a5,0x7
    80006110:	2ec78793          	addi	a5,a5,748 # 8000d3f8 <_ZTV12ConsumerSync+0x10>
    80006114:	00f53023          	sd	a5,0(a0)
    80006118:	ffffc097          	auipc	ra,0xffffc
    8000611c:	4e4080e7          	jalr	1252(ra) # 800025fc <_ZN6ThreadD1Ev>
    80006120:	00813083          	ld	ra,8(sp)
    80006124:	00013403          	ld	s0,0(sp)
    80006128:	01010113          	addi	sp,sp,16
    8000612c:	00008067          	ret

0000000080006130 <_ZN12ConsumerSyncD0Ev>:
    80006130:	fe010113          	addi	sp,sp,-32
    80006134:	00113c23          	sd	ra,24(sp)
    80006138:	00813823          	sd	s0,16(sp)
    8000613c:	00913423          	sd	s1,8(sp)
    80006140:	02010413          	addi	s0,sp,32
    80006144:	00050493          	mv	s1,a0
    80006148:	00007797          	auipc	a5,0x7
    8000614c:	2b078793          	addi	a5,a5,688 # 8000d3f8 <_ZTV12ConsumerSync+0x10>
    80006150:	00f53023          	sd	a5,0(a0)
    80006154:	ffffc097          	auipc	ra,0xffffc
    80006158:	4a8080e7          	jalr	1192(ra) # 800025fc <_ZN6ThreadD1Ev>
    8000615c:	00048513          	mv	a0,s1
    80006160:	ffffc097          	auipc	ra,0xffffc
    80006164:	568080e7          	jalr	1384(ra) # 800026c8 <_ZdlPv>
    80006168:	01813083          	ld	ra,24(sp)
    8000616c:	01013403          	ld	s0,16(sp)
    80006170:	00813483          	ld	s1,8(sp)
    80006174:	02010113          	addi	sp,sp,32
    80006178:	00008067          	ret

000000008000617c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    8000617c:	ff010113          	addi	sp,sp,-16
    80006180:	00113423          	sd	ra,8(sp)
    80006184:	00813023          	sd	s0,0(sp)
    80006188:	01010413          	addi	s0,sp,16
    8000618c:	00007797          	auipc	a5,0x7
    80006190:	24478793          	addi	a5,a5,580 # 8000d3d0 <_ZTV12ProducerSync+0x10>
    80006194:	00f53023          	sd	a5,0(a0)
    80006198:	ffffc097          	auipc	ra,0xffffc
    8000619c:	464080e7          	jalr	1124(ra) # 800025fc <_ZN6ThreadD1Ev>
    800061a0:	00813083          	ld	ra,8(sp)
    800061a4:	00013403          	ld	s0,0(sp)
    800061a8:	01010113          	addi	sp,sp,16
    800061ac:	00008067          	ret

00000000800061b0 <_ZN12ProducerSyncD0Ev>:
    800061b0:	fe010113          	addi	sp,sp,-32
    800061b4:	00113c23          	sd	ra,24(sp)
    800061b8:	00813823          	sd	s0,16(sp)
    800061bc:	00913423          	sd	s1,8(sp)
    800061c0:	02010413          	addi	s0,sp,32
    800061c4:	00050493          	mv	s1,a0
    800061c8:	00007797          	auipc	a5,0x7
    800061cc:	20878793          	addi	a5,a5,520 # 8000d3d0 <_ZTV12ProducerSync+0x10>
    800061d0:	00f53023          	sd	a5,0(a0)
    800061d4:	ffffc097          	auipc	ra,0xffffc
    800061d8:	428080e7          	jalr	1064(ra) # 800025fc <_ZN6ThreadD1Ev>
    800061dc:	00048513          	mv	a0,s1
    800061e0:	ffffc097          	auipc	ra,0xffffc
    800061e4:	4e8080e7          	jalr	1256(ra) # 800026c8 <_ZdlPv>
    800061e8:	01813083          	ld	ra,24(sp)
    800061ec:	01013403          	ld	s0,16(sp)
    800061f0:	00813483          	ld	s1,8(sp)
    800061f4:	02010113          	addi	sp,sp,32
    800061f8:	00008067          	ret

00000000800061fc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    800061fc:	ff010113          	addi	sp,sp,-16
    80006200:	00113423          	sd	ra,8(sp)
    80006204:	00813023          	sd	s0,0(sp)
    80006208:	01010413          	addi	s0,sp,16
    8000620c:	00007797          	auipc	a5,0x7
    80006210:	19c78793          	addi	a5,a5,412 # 8000d3a8 <_ZTV16ProducerKeyboard+0x10>
    80006214:	00f53023          	sd	a5,0(a0)
    80006218:	ffffc097          	auipc	ra,0xffffc
    8000621c:	3e4080e7          	jalr	996(ra) # 800025fc <_ZN6ThreadD1Ev>
    80006220:	00813083          	ld	ra,8(sp)
    80006224:	00013403          	ld	s0,0(sp)
    80006228:	01010113          	addi	sp,sp,16
    8000622c:	00008067          	ret

0000000080006230 <_ZN16ProducerKeyboardD0Ev>:
    80006230:	fe010113          	addi	sp,sp,-32
    80006234:	00113c23          	sd	ra,24(sp)
    80006238:	00813823          	sd	s0,16(sp)
    8000623c:	00913423          	sd	s1,8(sp)
    80006240:	02010413          	addi	s0,sp,32
    80006244:	00050493          	mv	s1,a0
    80006248:	00007797          	auipc	a5,0x7
    8000624c:	16078793          	addi	a5,a5,352 # 8000d3a8 <_ZTV16ProducerKeyboard+0x10>
    80006250:	00f53023          	sd	a5,0(a0)
    80006254:	ffffc097          	auipc	ra,0xffffc
    80006258:	3a8080e7          	jalr	936(ra) # 800025fc <_ZN6ThreadD1Ev>
    8000625c:	00048513          	mv	a0,s1
    80006260:	ffffc097          	auipc	ra,0xffffc
    80006264:	468080e7          	jalr	1128(ra) # 800026c8 <_ZdlPv>
    80006268:	01813083          	ld	ra,24(sp)
    8000626c:	01013403          	ld	s0,16(sp)
    80006270:	00813483          	ld	s1,8(sp)
    80006274:	02010113          	addi	sp,sp,32
    80006278:	00008067          	ret

000000008000627c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000627c:	ff010113          	addi	sp,sp,-16
    80006280:	00113423          	sd	ra,8(sp)
    80006284:	00813023          	sd	s0,0(sp)
    80006288:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000628c:	02053583          	ld	a1,32(a0)
    80006290:	fffff097          	auipc	ra,0xfffff
    80006294:	7e4080e7          	jalr	2020(ra) # 80005a74 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80006298:	00813083          	ld	ra,8(sp)
    8000629c:	00013403          	ld	s0,0(sp)
    800062a0:	01010113          	addi	sp,sp,16
    800062a4:	00008067          	ret

00000000800062a8 <_ZN12ProducerSync3runEv>:
    void run() override {
    800062a8:	ff010113          	addi	sp,sp,-16
    800062ac:	00113423          	sd	ra,8(sp)
    800062b0:	00813023          	sd	s0,0(sp)
    800062b4:	01010413          	addi	s0,sp,16
        producer(td);
    800062b8:	02053583          	ld	a1,32(a0)
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	878080e7          	jalr	-1928(ra) # 80005b34 <_ZN12ProducerSync8producerEPv>
    }
    800062c4:	00813083          	ld	ra,8(sp)
    800062c8:	00013403          	ld	s0,0(sp)
    800062cc:	01010113          	addi	sp,sp,16
    800062d0:	00008067          	ret

00000000800062d4 <_ZN12ConsumerSync3runEv>:
    void run() override {
    800062d4:	ff010113          	addi	sp,sp,-16
    800062d8:	00113423          	sd	ra,8(sp)
    800062dc:	00813023          	sd	s0,0(sp)
    800062e0:	01010413          	addi	s0,sp,16
        consumer(td);
    800062e4:	02053583          	ld	a1,32(a0)
    800062e8:	00000097          	auipc	ra,0x0
    800062ec:	8e0080e7          	jalr	-1824(ra) # 80005bc8 <_ZN12ConsumerSync8consumerEPv>
    }
    800062f0:	00813083          	ld	ra,8(sp)
    800062f4:	00013403          	ld	s0,0(sp)
    800062f8:	01010113          	addi	sp,sp,16
    800062fc:	00008067          	ret

0000000080006300 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80006300:	fe010113          	addi	sp,sp,-32
    80006304:	00113c23          	sd	ra,24(sp)
    80006308:	00813823          	sd	s0,16(sp)
    8000630c:	00913423          	sd	s1,8(sp)
    80006310:	02010413          	addi	s0,sp,32
    80006314:	00050493          	mv	s1,a0
    LOCK();
    80006318:	00100613          	li	a2,1
    8000631c:	00000593          	li	a1,0
    80006320:	00034517          	auipc	a0,0x34
    80006324:	d0850513          	addi	a0,a0,-760 # 8003a028 <lockPrint>
    80006328:	ffffb097          	auipc	ra,0xffffb
    8000632c:	de8080e7          	jalr	-536(ra) # 80001110 <copy_and_swap>
    80006330:	00050863          	beqz	a0,80006340 <_Z11printStringPKc+0x40>
    80006334:	ffffb097          	auipc	ra,0xffffb
    80006338:	f60080e7          	jalr	-160(ra) # 80001294 <_Z15thread_dispatchv>
    8000633c:	fddff06f          	j	80006318 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80006340:	0004c503          	lbu	a0,0(s1)
    80006344:	00050a63          	beqz	a0,80006358 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80006348:	ffffb097          	auipc	ra,0xffffb
    8000634c:	18c080e7          	jalr	396(ra) # 800014d4 <_Z4putcc>
        string++;
    80006350:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80006354:	fedff06f          	j	80006340 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80006358:	00000613          	li	a2,0
    8000635c:	00100593          	li	a1,1
    80006360:	00034517          	auipc	a0,0x34
    80006364:	cc850513          	addi	a0,a0,-824 # 8003a028 <lockPrint>
    80006368:	ffffb097          	auipc	ra,0xffffb
    8000636c:	da8080e7          	jalr	-600(ra) # 80001110 <copy_and_swap>
    80006370:	fe0514e3          	bnez	a0,80006358 <_Z11printStringPKc+0x58>
}
    80006374:	01813083          	ld	ra,24(sp)
    80006378:	01013403          	ld	s0,16(sp)
    8000637c:	00813483          	ld	s1,8(sp)
    80006380:	02010113          	addi	sp,sp,32
    80006384:	00008067          	ret

0000000080006388 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80006388:	fd010113          	addi	sp,sp,-48
    8000638c:	02113423          	sd	ra,40(sp)
    80006390:	02813023          	sd	s0,32(sp)
    80006394:	00913c23          	sd	s1,24(sp)
    80006398:	01213823          	sd	s2,16(sp)
    8000639c:	01313423          	sd	s3,8(sp)
    800063a0:	01413023          	sd	s4,0(sp)
    800063a4:	03010413          	addi	s0,sp,48
    800063a8:	00050993          	mv	s3,a0
    800063ac:	00058a13          	mv	s4,a1
    LOCK();
    800063b0:	00100613          	li	a2,1
    800063b4:	00000593          	li	a1,0
    800063b8:	00034517          	auipc	a0,0x34
    800063bc:	c7050513          	addi	a0,a0,-912 # 8003a028 <lockPrint>
    800063c0:	ffffb097          	auipc	ra,0xffffb
    800063c4:	d50080e7          	jalr	-688(ra) # 80001110 <copy_and_swap>
    800063c8:	00050863          	beqz	a0,800063d8 <_Z9getStringPci+0x50>
    800063cc:	ffffb097          	auipc	ra,0xffffb
    800063d0:	ec8080e7          	jalr	-312(ra) # 80001294 <_Z15thread_dispatchv>
    800063d4:	fddff06f          	j	800063b0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    800063d8:	00000913          	li	s2,0
    800063dc:	00090493          	mv	s1,s2
    800063e0:	0019091b          	addiw	s2,s2,1
    800063e4:	03495a63          	bge	s2,s4,80006418 <_Z9getStringPci+0x90>
        cc = getc();
    800063e8:	ffffb097          	auipc	ra,0xffffb
    800063ec:	0ac080e7          	jalr	172(ra) # 80001494 <_Z4getcv>
        if(cc < 1)
    800063f0:	02050463          	beqz	a0,80006418 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800063f4:	009984b3          	add	s1,s3,s1
    800063f8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800063fc:	00a00793          	li	a5,10
    80006400:	00f50a63          	beq	a0,a5,80006414 <_Z9getStringPci+0x8c>
    80006404:	00d00793          	li	a5,13
    80006408:	fcf51ae3          	bne	a0,a5,800063dc <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000640c:	00090493          	mv	s1,s2
    80006410:	0080006f          	j	80006418 <_Z9getStringPci+0x90>
    80006414:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80006418:	009984b3          	add	s1,s3,s1
    8000641c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80006420:	00000613          	li	a2,0
    80006424:	00100593          	li	a1,1
    80006428:	00034517          	auipc	a0,0x34
    8000642c:	c0050513          	addi	a0,a0,-1024 # 8003a028 <lockPrint>
    80006430:	ffffb097          	auipc	ra,0xffffb
    80006434:	ce0080e7          	jalr	-800(ra) # 80001110 <copy_and_swap>
    80006438:	fe0514e3          	bnez	a0,80006420 <_Z9getStringPci+0x98>
    return buf;
}
    8000643c:	00098513          	mv	a0,s3
    80006440:	02813083          	ld	ra,40(sp)
    80006444:	02013403          	ld	s0,32(sp)
    80006448:	01813483          	ld	s1,24(sp)
    8000644c:	01013903          	ld	s2,16(sp)
    80006450:	00813983          	ld	s3,8(sp)
    80006454:	00013a03          	ld	s4,0(sp)
    80006458:	03010113          	addi	sp,sp,48
    8000645c:	00008067          	ret

0000000080006460 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80006460:	ff010113          	addi	sp,sp,-16
    80006464:	00813423          	sd	s0,8(sp)
    80006468:	01010413          	addi	s0,sp,16
    8000646c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80006470:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80006474:	0006c603          	lbu	a2,0(a3)
    80006478:	fd06071b          	addiw	a4,a2,-48
    8000647c:	0ff77713          	andi	a4,a4,255
    80006480:	00900793          	li	a5,9
    80006484:	02e7e063          	bltu	a5,a4,800064a4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80006488:	0025179b          	slliw	a5,a0,0x2
    8000648c:	00a787bb          	addw	a5,a5,a0
    80006490:	0017979b          	slliw	a5,a5,0x1
    80006494:	00168693          	addi	a3,a3,1
    80006498:	00c787bb          	addw	a5,a5,a2
    8000649c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800064a0:	fd5ff06f          	j	80006474 <_Z11stringToIntPKc+0x14>
    return n;
}
    800064a4:	00813403          	ld	s0,8(sp)
    800064a8:	01010113          	addi	sp,sp,16
    800064ac:	00008067          	ret

00000000800064b0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800064b0:	fc010113          	addi	sp,sp,-64
    800064b4:	02113c23          	sd	ra,56(sp)
    800064b8:	02813823          	sd	s0,48(sp)
    800064bc:	02913423          	sd	s1,40(sp)
    800064c0:	03213023          	sd	s2,32(sp)
    800064c4:	01313c23          	sd	s3,24(sp)
    800064c8:	04010413          	addi	s0,sp,64
    800064cc:	00050493          	mv	s1,a0
    800064d0:	00058913          	mv	s2,a1
    800064d4:	00060993          	mv	s3,a2
    LOCK();
    800064d8:	00100613          	li	a2,1
    800064dc:	00000593          	li	a1,0
    800064e0:	00034517          	auipc	a0,0x34
    800064e4:	b4850513          	addi	a0,a0,-1208 # 8003a028 <lockPrint>
    800064e8:	ffffb097          	auipc	ra,0xffffb
    800064ec:	c28080e7          	jalr	-984(ra) # 80001110 <copy_and_swap>
    800064f0:	00050863          	beqz	a0,80006500 <_Z8printIntiii+0x50>
    800064f4:	ffffb097          	auipc	ra,0xffffb
    800064f8:	da0080e7          	jalr	-608(ra) # 80001294 <_Z15thread_dispatchv>
    800064fc:	fddff06f          	j	800064d8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80006500:	00098463          	beqz	s3,80006508 <_Z8printIntiii+0x58>
    80006504:	0804c463          	bltz	s1,8000658c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80006508:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000650c:	00000593          	li	a1,0
    }

    i = 0;
    80006510:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80006514:	0009079b          	sext.w	a5,s2
    80006518:	0325773b          	remuw	a4,a0,s2
    8000651c:	00048613          	mv	a2,s1
    80006520:	0014849b          	addiw	s1,s1,1
    80006524:	02071693          	slli	a3,a4,0x20
    80006528:	0206d693          	srli	a3,a3,0x20
    8000652c:	00007717          	auipc	a4,0x7
    80006530:	ee470713          	addi	a4,a4,-284 # 8000d410 <digits>
    80006534:	00d70733          	add	a4,a4,a3
    80006538:	00074683          	lbu	a3,0(a4)
    8000653c:	fd040713          	addi	a4,s0,-48
    80006540:	00c70733          	add	a4,a4,a2
    80006544:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80006548:	0005071b          	sext.w	a4,a0
    8000654c:	0325553b          	divuw	a0,a0,s2
    80006550:	fcf772e3          	bgeu	a4,a5,80006514 <_Z8printIntiii+0x64>
    if(neg)
    80006554:	00058c63          	beqz	a1,8000656c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80006558:	fd040793          	addi	a5,s0,-48
    8000655c:	009784b3          	add	s1,a5,s1
    80006560:	02d00793          	li	a5,45
    80006564:	fef48823          	sb	a5,-16(s1)
    80006568:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000656c:	fff4849b          	addiw	s1,s1,-1
    80006570:	0204c463          	bltz	s1,80006598 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80006574:	fd040793          	addi	a5,s0,-48
    80006578:	009787b3          	add	a5,a5,s1
    8000657c:	ff07c503          	lbu	a0,-16(a5)
    80006580:	ffffb097          	auipc	ra,0xffffb
    80006584:	f54080e7          	jalr	-172(ra) # 800014d4 <_Z4putcc>
    80006588:	fe5ff06f          	j	8000656c <_Z8printIntiii+0xbc>
        x = -xx;
    8000658c:	4090053b          	negw	a0,s1
        neg = 1;
    80006590:	00100593          	li	a1,1
        x = -xx;
    80006594:	f7dff06f          	j	80006510 <_Z8printIntiii+0x60>

    UNLOCK();
    80006598:	00000613          	li	a2,0
    8000659c:	00100593          	li	a1,1
    800065a0:	00034517          	auipc	a0,0x34
    800065a4:	a8850513          	addi	a0,a0,-1400 # 8003a028 <lockPrint>
    800065a8:	ffffb097          	auipc	ra,0xffffb
    800065ac:	b68080e7          	jalr	-1176(ra) # 80001110 <copy_and_swap>
    800065b0:	fe0514e3          	bnez	a0,80006598 <_Z8printIntiii+0xe8>
    800065b4:	03813083          	ld	ra,56(sp)
    800065b8:	03013403          	ld	s0,48(sp)
    800065bc:	02813483          	ld	s1,40(sp)
    800065c0:	02013903          	ld	s2,32(sp)
    800065c4:	01813983          	ld	s3,24(sp)
    800065c8:	04010113          	addi	sp,sp,64
    800065cc:	00008067          	ret

00000000800065d0 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800065d0:	fd010113          	addi	sp,sp,-48
    800065d4:	02113423          	sd	ra,40(sp)
    800065d8:	02813023          	sd	s0,32(sp)
    800065dc:	00913c23          	sd	s1,24(sp)
    800065e0:	01213823          	sd	s2,16(sp)
    800065e4:	01313423          	sd	s3,8(sp)
    800065e8:	03010413          	addi	s0,sp,48
    800065ec:	00050493          	mv	s1,a0
    800065f0:	00058913          	mv	s2,a1
    800065f4:	0015879b          	addiw	a5,a1,1
    800065f8:	0007851b          	sext.w	a0,a5
    800065fc:	00f4a023          	sw	a5,0(s1)
    80006600:	0004a823          	sw	zero,16(s1)
    80006604:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80006608:	00251513          	slli	a0,a0,0x2
    8000660c:	ffffb097          	auipc	ra,0xffffb
    80006610:	b44080e7          	jalr	-1212(ra) # 80001150 <_Z9mem_allocm>
    80006614:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80006618:	01000513          	li	a0,16
    8000661c:	ffffc097          	auipc	ra,0xffffc
    80006620:	084080e7          	jalr	132(ra) # 800026a0 <_Znwm>
    80006624:	00050993          	mv	s3,a0
    80006628:	00000593          	li	a1,0
    8000662c:	ffffc097          	auipc	ra,0xffffc
    80006630:	31c080e7          	jalr	796(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80006634:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80006638:	01000513          	li	a0,16
    8000663c:	ffffc097          	auipc	ra,0xffffc
    80006640:	064080e7          	jalr	100(ra) # 800026a0 <_Znwm>
    80006644:	00050993          	mv	s3,a0
    80006648:	00090593          	mv	a1,s2
    8000664c:	ffffc097          	auipc	ra,0xffffc
    80006650:	2fc080e7          	jalr	764(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80006654:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80006658:	01000513          	li	a0,16
    8000665c:	ffffc097          	auipc	ra,0xffffc
    80006660:	044080e7          	jalr	68(ra) # 800026a0 <_Znwm>
    80006664:	00050913          	mv	s2,a0
    80006668:	00100593          	li	a1,1
    8000666c:	ffffc097          	auipc	ra,0xffffc
    80006670:	2dc080e7          	jalr	732(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80006674:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80006678:	01000513          	li	a0,16
    8000667c:	ffffc097          	auipc	ra,0xffffc
    80006680:	024080e7          	jalr	36(ra) # 800026a0 <_Znwm>
    80006684:	00050913          	mv	s2,a0
    80006688:	00100593          	li	a1,1
    8000668c:	ffffc097          	auipc	ra,0xffffc
    80006690:	2bc080e7          	jalr	700(ra) # 80002948 <_ZN9SemaphoreC1Ej>
    80006694:	0324b823          	sd	s2,48(s1)
}
    80006698:	02813083          	ld	ra,40(sp)
    8000669c:	02013403          	ld	s0,32(sp)
    800066a0:	01813483          	ld	s1,24(sp)
    800066a4:	01013903          	ld	s2,16(sp)
    800066a8:	00813983          	ld	s3,8(sp)
    800066ac:	03010113          	addi	sp,sp,48
    800066b0:	00008067          	ret
    800066b4:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800066b8:	00098513          	mv	a0,s3
    800066bc:	ffffc097          	auipc	ra,0xffffc
    800066c0:	00c080e7          	jalr	12(ra) # 800026c8 <_ZdlPv>
    800066c4:	00048513          	mv	a0,s1
    800066c8:	00035097          	auipc	ra,0x35
    800066cc:	a40080e7          	jalr	-1472(ra) # 8003b108 <_Unwind_Resume>
    800066d0:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800066d4:	00098513          	mv	a0,s3
    800066d8:	ffffc097          	auipc	ra,0xffffc
    800066dc:	ff0080e7          	jalr	-16(ra) # 800026c8 <_ZdlPv>
    800066e0:	00048513          	mv	a0,s1
    800066e4:	00035097          	auipc	ra,0x35
    800066e8:	a24080e7          	jalr	-1500(ra) # 8003b108 <_Unwind_Resume>
    800066ec:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800066f0:	00090513          	mv	a0,s2
    800066f4:	ffffc097          	auipc	ra,0xffffc
    800066f8:	fd4080e7          	jalr	-44(ra) # 800026c8 <_ZdlPv>
    800066fc:	00048513          	mv	a0,s1
    80006700:	00035097          	auipc	ra,0x35
    80006704:	a08080e7          	jalr	-1528(ra) # 8003b108 <_Unwind_Resume>
    80006708:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000670c:	00090513          	mv	a0,s2
    80006710:	ffffc097          	auipc	ra,0xffffc
    80006714:	fb8080e7          	jalr	-72(ra) # 800026c8 <_ZdlPv>
    80006718:	00048513          	mv	a0,s1
    8000671c:	00035097          	auipc	ra,0x35
    80006720:	9ec080e7          	jalr	-1556(ra) # 8003b108 <_Unwind_Resume>

0000000080006724 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80006724:	fe010113          	addi	sp,sp,-32
    80006728:	00113c23          	sd	ra,24(sp)
    8000672c:	00813823          	sd	s0,16(sp)
    80006730:	00913423          	sd	s1,8(sp)
    80006734:	01213023          	sd	s2,0(sp)
    80006738:	02010413          	addi	s0,sp,32
    8000673c:	00050493          	mv	s1,a0
    80006740:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80006744:	01853503          	ld	a0,24(a0)
    80006748:	ffffc097          	auipc	ra,0xffffc
    8000674c:	24c080e7          	jalr	588(ra) # 80002994 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80006750:	0304b503          	ld	a0,48(s1)
    80006754:	ffffc097          	auipc	ra,0xffffc
    80006758:	240080e7          	jalr	576(ra) # 80002994 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000675c:	0084b783          	ld	a5,8(s1)
    80006760:	0144a703          	lw	a4,20(s1)
    80006764:	00271713          	slli	a4,a4,0x2
    80006768:	00e787b3          	add	a5,a5,a4
    8000676c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006770:	0144a783          	lw	a5,20(s1)
    80006774:	0017879b          	addiw	a5,a5,1
    80006778:	0004a703          	lw	a4,0(s1)
    8000677c:	02e7e7bb          	remw	a5,a5,a4
    80006780:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80006784:	0304b503          	ld	a0,48(s1)
    80006788:	ffffc097          	auipc	ra,0xffffc
    8000678c:	238080e7          	jalr	568(ra) # 800029c0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80006790:	0204b503          	ld	a0,32(s1)
    80006794:	ffffc097          	auipc	ra,0xffffc
    80006798:	22c080e7          	jalr	556(ra) # 800029c0 <_ZN9Semaphore6signalEv>

}
    8000679c:	01813083          	ld	ra,24(sp)
    800067a0:	01013403          	ld	s0,16(sp)
    800067a4:	00813483          	ld	s1,8(sp)
    800067a8:	00013903          	ld	s2,0(sp)
    800067ac:	02010113          	addi	sp,sp,32
    800067b0:	00008067          	ret

00000000800067b4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800067b4:	fe010113          	addi	sp,sp,-32
    800067b8:	00113c23          	sd	ra,24(sp)
    800067bc:	00813823          	sd	s0,16(sp)
    800067c0:	00913423          	sd	s1,8(sp)
    800067c4:	01213023          	sd	s2,0(sp)
    800067c8:	02010413          	addi	s0,sp,32
    800067cc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800067d0:	02053503          	ld	a0,32(a0)
    800067d4:	ffffc097          	auipc	ra,0xffffc
    800067d8:	1c0080e7          	jalr	448(ra) # 80002994 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800067dc:	0284b503          	ld	a0,40(s1)
    800067e0:	ffffc097          	auipc	ra,0xffffc
    800067e4:	1b4080e7          	jalr	436(ra) # 80002994 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800067e8:	0084b703          	ld	a4,8(s1)
    800067ec:	0104a783          	lw	a5,16(s1)
    800067f0:	00279693          	slli	a3,a5,0x2
    800067f4:	00d70733          	add	a4,a4,a3
    800067f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800067fc:	0017879b          	addiw	a5,a5,1
    80006800:	0004a703          	lw	a4,0(s1)
    80006804:	02e7e7bb          	remw	a5,a5,a4
    80006808:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000680c:	0284b503          	ld	a0,40(s1)
    80006810:	ffffc097          	auipc	ra,0xffffc
    80006814:	1b0080e7          	jalr	432(ra) # 800029c0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80006818:	0184b503          	ld	a0,24(s1)
    8000681c:	ffffc097          	auipc	ra,0xffffc
    80006820:	1a4080e7          	jalr	420(ra) # 800029c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80006824:	00090513          	mv	a0,s2
    80006828:	01813083          	ld	ra,24(sp)
    8000682c:	01013403          	ld	s0,16(sp)
    80006830:	00813483          	ld	s1,8(sp)
    80006834:	00013903          	ld	s2,0(sp)
    80006838:	02010113          	addi	sp,sp,32
    8000683c:	00008067          	ret

0000000080006840 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80006840:	fe010113          	addi	sp,sp,-32
    80006844:	00113c23          	sd	ra,24(sp)
    80006848:	00813823          	sd	s0,16(sp)
    8000684c:	00913423          	sd	s1,8(sp)
    80006850:	01213023          	sd	s2,0(sp)
    80006854:	02010413          	addi	s0,sp,32
    80006858:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000685c:	02853503          	ld	a0,40(a0)
    80006860:	ffffc097          	auipc	ra,0xffffc
    80006864:	134080e7          	jalr	308(ra) # 80002994 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80006868:	0304b503          	ld	a0,48(s1)
    8000686c:	ffffc097          	auipc	ra,0xffffc
    80006870:	128080e7          	jalr	296(ra) # 80002994 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80006874:	0144a783          	lw	a5,20(s1)
    80006878:	0104a903          	lw	s2,16(s1)
    8000687c:	0327ce63          	blt	a5,s2,800068b8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80006880:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80006884:	0304b503          	ld	a0,48(s1)
    80006888:	ffffc097          	auipc	ra,0xffffc
    8000688c:	138080e7          	jalr	312(ra) # 800029c0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80006890:	0284b503          	ld	a0,40(s1)
    80006894:	ffffc097          	auipc	ra,0xffffc
    80006898:	12c080e7          	jalr	300(ra) # 800029c0 <_ZN9Semaphore6signalEv>

    return ret;
}
    8000689c:	00090513          	mv	a0,s2
    800068a0:	01813083          	ld	ra,24(sp)
    800068a4:	01013403          	ld	s0,16(sp)
    800068a8:	00813483          	ld	s1,8(sp)
    800068ac:	00013903          	ld	s2,0(sp)
    800068b0:	02010113          	addi	sp,sp,32
    800068b4:	00008067          	ret
        ret = cap - head + tail;
    800068b8:	0004a703          	lw	a4,0(s1)
    800068bc:	4127093b          	subw	s2,a4,s2
    800068c0:	00f9093b          	addw	s2,s2,a5
    800068c4:	fc1ff06f          	j	80006884 <_ZN9BufferCPP6getCntEv+0x44>

00000000800068c8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800068c8:	fe010113          	addi	sp,sp,-32
    800068cc:	00113c23          	sd	ra,24(sp)
    800068d0:	00813823          	sd	s0,16(sp)
    800068d4:	00913423          	sd	s1,8(sp)
    800068d8:	02010413          	addi	s0,sp,32
    800068dc:	00050493          	mv	s1,a0
    Console::putc('\n');
    800068e0:	00a00513          	li	a0,10
    800068e4:	ffffc097          	auipc	ra,0xffffc
    800068e8:	188080e7          	jalr	392(ra) # 80002a6c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800068ec:	00004517          	auipc	a0,0x4
    800068f0:	cec50513          	addi	a0,a0,-788 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800068f4:	00000097          	auipc	ra,0x0
    800068f8:	a0c080e7          	jalr	-1524(ra) # 80006300 <_Z11printStringPKc>
    while (getCnt()) {
    800068fc:	00048513          	mv	a0,s1
    80006900:	00000097          	auipc	ra,0x0
    80006904:	f40080e7          	jalr	-192(ra) # 80006840 <_ZN9BufferCPP6getCntEv>
    80006908:	02050c63          	beqz	a0,80006940 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000690c:	0084b783          	ld	a5,8(s1)
    80006910:	0104a703          	lw	a4,16(s1)
    80006914:	00271713          	slli	a4,a4,0x2
    80006918:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000691c:	0007c503          	lbu	a0,0(a5)
    80006920:	ffffc097          	auipc	ra,0xffffc
    80006924:	14c080e7          	jalr	332(ra) # 80002a6c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80006928:	0104a783          	lw	a5,16(s1)
    8000692c:	0017879b          	addiw	a5,a5,1
    80006930:	0004a703          	lw	a4,0(s1)
    80006934:	02e7e7bb          	remw	a5,a5,a4
    80006938:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000693c:	fc1ff06f          	j	800068fc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80006940:	02100513          	li	a0,33
    80006944:	ffffc097          	auipc	ra,0xffffc
    80006948:	128080e7          	jalr	296(ra) # 80002a6c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000694c:	00a00513          	li	a0,10
    80006950:	ffffc097          	auipc	ra,0xffffc
    80006954:	11c080e7          	jalr	284(ra) # 80002a6c <_ZN7Console4putcEc>
    mem_free(buffer);
    80006958:	0084b503          	ld	a0,8(s1)
    8000695c:	ffffb097          	auipc	ra,0xffffb
    80006960:	848080e7          	jalr	-1976(ra) # 800011a4 <_Z8mem_freePv>
    delete itemAvailable;
    80006964:	0204b503          	ld	a0,32(s1)
    80006968:	00050863          	beqz	a0,80006978 <_ZN9BufferCPPD1Ev+0xb0>
    8000696c:	00053783          	ld	a5,0(a0)
    80006970:	0087b783          	ld	a5,8(a5)
    80006974:	000780e7          	jalr	a5
    delete spaceAvailable;
    80006978:	0184b503          	ld	a0,24(s1)
    8000697c:	00050863          	beqz	a0,8000698c <_ZN9BufferCPPD1Ev+0xc4>
    80006980:	00053783          	ld	a5,0(a0)
    80006984:	0087b783          	ld	a5,8(a5)
    80006988:	000780e7          	jalr	a5
    delete mutexTail;
    8000698c:	0304b503          	ld	a0,48(s1)
    80006990:	00050863          	beqz	a0,800069a0 <_ZN9BufferCPPD1Ev+0xd8>
    80006994:	00053783          	ld	a5,0(a0)
    80006998:	0087b783          	ld	a5,8(a5)
    8000699c:	000780e7          	jalr	a5
    delete mutexHead;
    800069a0:	0284b503          	ld	a0,40(s1)
    800069a4:	00050863          	beqz	a0,800069b4 <_ZN9BufferCPPD1Ev+0xec>
    800069a8:	00053783          	ld	a5,0(a0)
    800069ac:	0087b783          	ld	a5,8(a5)
    800069b0:	000780e7          	jalr	a5
}
    800069b4:	01813083          	ld	ra,24(sp)
    800069b8:	01013403          	ld	s0,16(sp)
    800069bc:	00813483          	ld	s1,8(sp)
    800069c0:	02010113          	addi	sp,sp,32
    800069c4:	00008067          	ret

00000000800069c8 <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    800069c8:	fe010113          	addi	sp,sp,-32
    800069cc:	00113c23          	sd	ra,24(sp)
    800069d0:	00813823          	sd	s0,16(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	01213023          	sd	s2,0(sp)
    800069dc:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    800069e0:	00053903          	ld	s2,0(a0)
    int i = 6;
    800069e4:	00600493          	li	s1,6
    while (--i > 0) {
    800069e8:	fff4849b          	addiw	s1,s1,-1
    800069ec:	04905463          	blez	s1,80006a34 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    800069f0:	00004517          	auipc	a0,0x4
    800069f4:	c0050513          	addi	a0,a0,-1024 # 8000a5f0 <CONSOLE_STATUS+0x5e0>
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	908080e7          	jalr	-1784(ra) # 80006300 <_Z11printStringPKc>
        printInt(sleep_time);
    80006a00:	00000613          	li	a2,0
    80006a04:	00a00593          	li	a1,10
    80006a08:	0009051b          	sext.w	a0,s2
    80006a0c:	00000097          	auipc	ra,0x0
    80006a10:	aa4080e7          	jalr	-1372(ra) # 800064b0 <_Z8printIntiii>
        printString(" !\n");
    80006a14:	00004517          	auipc	a0,0x4
    80006a18:	be450513          	addi	a0,a0,-1052 # 8000a5f8 <CONSOLE_STATUS+0x5e8>
    80006a1c:	00000097          	auipc	ra,0x0
    80006a20:	8e4080e7          	jalr	-1820(ra) # 80006300 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80006a24:	00090513          	mv	a0,s2
    80006a28:	ffffb097          	auipc	ra,0xffffb
    80006a2c:	a2c080e7          	jalr	-1492(ra) # 80001454 <_Z10time_sleepm>
    while (--i > 0) {
    80006a30:	fb9ff06f          	j	800069e8 <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80006a34:	00a00793          	li	a5,10
    80006a38:	02f95933          	divu	s2,s2,a5
    80006a3c:	fff90913          	addi	s2,s2,-1
    80006a40:	00033797          	auipc	a5,0x33
    80006a44:	5f078793          	addi	a5,a5,1520 # 8003a030 <_ZL8finished>
    80006a48:	01278933          	add	s2,a5,s2
    80006a4c:	00100793          	li	a5,1
    80006a50:	00f90023          	sb	a5,0(s2)
}
    80006a54:	01813083          	ld	ra,24(sp)
    80006a58:	01013403          	ld	s0,16(sp)
    80006a5c:	00813483          	ld	s1,8(sp)
    80006a60:	00013903          	ld	s2,0(sp)
    80006a64:	02010113          	addi	sp,sp,32
    80006a68:	00008067          	ret

0000000080006a6c <_Z12testSleepingv>:

void testSleeping() {
    80006a6c:	fc010113          	addi	sp,sp,-64
    80006a70:	02113c23          	sd	ra,56(sp)
    80006a74:	02813823          	sd	s0,48(sp)
    80006a78:	02913423          	sd	s1,40(sp)
    80006a7c:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80006a80:	00a00793          	li	a5,10
    80006a84:	fcf43823          	sd	a5,-48(s0)
    80006a88:	01400793          	li	a5,20
    80006a8c:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80006a90:	00000493          	li	s1,0
    80006a94:	02c0006f          	j	80006ac0 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80006a98:	00349793          	slli	a5,s1,0x3
    80006a9c:	fd040613          	addi	a2,s0,-48
    80006aa0:	00f60633          	add	a2,a2,a5
    80006aa4:	00000597          	auipc	a1,0x0
    80006aa8:	f2458593          	addi	a1,a1,-220 # 800069c8 <_ZL9sleepyRunPv>
    80006aac:	fc040513          	addi	a0,s0,-64
    80006ab0:	00f50533          	add	a0,a0,a5
    80006ab4:	ffffa097          	auipc	ra,0xffffa
    80006ab8:	730080e7          	jalr	1840(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80006abc:	0014849b          	addiw	s1,s1,1
    80006ac0:	00100793          	li	a5,1
    80006ac4:	fc97dae3          	bge	a5,s1,80006a98 <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80006ac8:	00033797          	auipc	a5,0x33
    80006acc:	5687c783          	lbu	a5,1384(a5) # 8003a030 <_ZL8finished>
    80006ad0:	fe078ce3          	beqz	a5,80006ac8 <_Z12testSleepingv+0x5c>
    80006ad4:	00033797          	auipc	a5,0x33
    80006ad8:	55d7c783          	lbu	a5,1373(a5) # 8003a031 <_ZL8finished+0x1>
    80006adc:	fe0786e3          	beqz	a5,80006ac8 <_Z12testSleepingv+0x5c>
}
    80006ae0:	03813083          	ld	ra,56(sp)
    80006ae4:	03013403          	ld	s0,48(sp)
    80006ae8:	02813483          	ld	s1,40(sp)
    80006aec:	04010113          	addi	sp,sp,64
    80006af0:	00008067          	ret

0000000080006af4 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80006af4:	fe010113          	addi	sp,sp,-32
    80006af8:	00113c23          	sd	ra,24(sp)
    80006afc:	00813823          	sd	s0,16(sp)
    80006b00:	00913423          	sd	s1,8(sp)
    80006b04:	01213023          	sd	s2,0(sp)
    80006b08:	02010413          	addi	s0,sp,32
    80006b0c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80006b10:	00100793          	li	a5,1
    80006b14:	02a7f863          	bgeu	a5,a0,80006b44 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80006b18:	00a00793          	li	a5,10
    80006b1c:	02f577b3          	remu	a5,a0,a5
    80006b20:	02078e63          	beqz	a5,80006b5c <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80006b24:	fff48513          	addi	a0,s1,-1
    80006b28:	00000097          	auipc	ra,0x0
    80006b2c:	fcc080e7          	jalr	-52(ra) # 80006af4 <_ZL9fibonaccim>
    80006b30:	00050913          	mv	s2,a0
    80006b34:	ffe48513          	addi	a0,s1,-2
    80006b38:	00000097          	auipc	ra,0x0
    80006b3c:	fbc080e7          	jalr	-68(ra) # 80006af4 <_ZL9fibonaccim>
    80006b40:	00a90533          	add	a0,s2,a0
}
    80006b44:	01813083          	ld	ra,24(sp)
    80006b48:	01013403          	ld	s0,16(sp)
    80006b4c:	00813483          	ld	s1,8(sp)
    80006b50:	00013903          	ld	s2,0(sp)
    80006b54:	02010113          	addi	sp,sp,32
    80006b58:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80006b5c:	ffffa097          	auipc	ra,0xffffa
    80006b60:	738080e7          	jalr	1848(ra) # 80001294 <_Z15thread_dispatchv>
    80006b64:	fc1ff06f          	j	80006b24 <_ZL9fibonaccim+0x30>

0000000080006b68 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80006b68:	fe010113          	addi	sp,sp,-32
    80006b6c:	00113c23          	sd	ra,24(sp)
    80006b70:	00813823          	sd	s0,16(sp)
    80006b74:	00913423          	sd	s1,8(sp)
    80006b78:	01213023          	sd	s2,0(sp)
    80006b7c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80006b80:	00a00493          	li	s1,10
    80006b84:	0400006f          	j	80006bc4 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006b88:	00004517          	auipc	a0,0x4
    80006b8c:	9b850513          	addi	a0,a0,-1608 # 8000a540 <CONSOLE_STATUS+0x530>
    80006b90:	fffff097          	auipc	ra,0xfffff
    80006b94:	770080e7          	jalr	1904(ra) # 80006300 <_Z11printStringPKc>
    80006b98:	00000613          	li	a2,0
    80006b9c:	00a00593          	li	a1,10
    80006ba0:	00048513          	mv	a0,s1
    80006ba4:	00000097          	auipc	ra,0x0
    80006ba8:	90c080e7          	jalr	-1780(ra) # 800064b0 <_Z8printIntiii>
    80006bac:	00003517          	auipc	a0,0x3
    80006bb0:	5d450513          	addi	a0,a0,1492 # 8000a180 <CONSOLE_STATUS+0x170>
    80006bb4:	fffff097          	auipc	ra,0xfffff
    80006bb8:	74c080e7          	jalr	1868(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80006bbc:	0014849b          	addiw	s1,s1,1
    80006bc0:	0ff4f493          	andi	s1,s1,255
    80006bc4:	00c00793          	li	a5,12
    80006bc8:	fc97f0e3          	bgeu	a5,s1,80006b88 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80006bcc:	00004517          	auipc	a0,0x4
    80006bd0:	97c50513          	addi	a0,a0,-1668 # 8000a548 <CONSOLE_STATUS+0x538>
    80006bd4:	fffff097          	auipc	ra,0xfffff
    80006bd8:	72c080e7          	jalr	1836(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80006bdc:	00500313          	li	t1,5
    thread_dispatch();
    80006be0:	ffffa097          	auipc	ra,0xffffa
    80006be4:	6b4080e7          	jalr	1716(ra) # 80001294 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80006be8:	01000513          	li	a0,16
    80006bec:	00000097          	auipc	ra,0x0
    80006bf0:	f08080e7          	jalr	-248(ra) # 80006af4 <_ZL9fibonaccim>
    80006bf4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80006bf8:	00004517          	auipc	a0,0x4
    80006bfc:	96050513          	addi	a0,a0,-1696 # 8000a558 <CONSOLE_STATUS+0x548>
    80006c00:	fffff097          	auipc	ra,0xfffff
    80006c04:	700080e7          	jalr	1792(ra) # 80006300 <_Z11printStringPKc>
    80006c08:	00000613          	li	a2,0
    80006c0c:	00a00593          	li	a1,10
    80006c10:	0009051b          	sext.w	a0,s2
    80006c14:	00000097          	auipc	ra,0x0
    80006c18:	89c080e7          	jalr	-1892(ra) # 800064b0 <_Z8printIntiii>
    80006c1c:	00003517          	auipc	a0,0x3
    80006c20:	56450513          	addi	a0,a0,1380 # 8000a180 <CONSOLE_STATUS+0x170>
    80006c24:	fffff097          	auipc	ra,0xfffff
    80006c28:	6dc080e7          	jalr	1756(ra) # 80006300 <_Z11printStringPKc>
    80006c2c:	0400006f          	j	80006c6c <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80006c30:	00004517          	auipc	a0,0x4
    80006c34:	91050513          	addi	a0,a0,-1776 # 8000a540 <CONSOLE_STATUS+0x530>
    80006c38:	fffff097          	auipc	ra,0xfffff
    80006c3c:	6c8080e7          	jalr	1736(ra) # 80006300 <_Z11printStringPKc>
    80006c40:	00000613          	li	a2,0
    80006c44:	00a00593          	li	a1,10
    80006c48:	00048513          	mv	a0,s1
    80006c4c:	00000097          	auipc	ra,0x0
    80006c50:	864080e7          	jalr	-1948(ra) # 800064b0 <_Z8printIntiii>
    80006c54:	00003517          	auipc	a0,0x3
    80006c58:	52c50513          	addi	a0,a0,1324 # 8000a180 <CONSOLE_STATUS+0x170>
    80006c5c:	fffff097          	auipc	ra,0xfffff
    80006c60:	6a4080e7          	jalr	1700(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80006c64:	0014849b          	addiw	s1,s1,1
    80006c68:	0ff4f493          	andi	s1,s1,255
    80006c6c:	00f00793          	li	a5,15
    80006c70:	fc97f0e3          	bgeu	a5,s1,80006c30 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80006c74:	00004517          	auipc	a0,0x4
    80006c78:	8f450513          	addi	a0,a0,-1804 # 8000a568 <CONSOLE_STATUS+0x558>
    80006c7c:	fffff097          	auipc	ra,0xfffff
    80006c80:	684080e7          	jalr	1668(ra) # 80006300 <_Z11printStringPKc>
    finishedD = true;
    80006c84:	00100793          	li	a5,1
    80006c88:	00033717          	auipc	a4,0x33
    80006c8c:	3af70523          	sb	a5,938(a4) # 8003a032 <_ZL9finishedD>
    thread_dispatch();
    80006c90:	ffffa097          	auipc	ra,0xffffa
    80006c94:	604080e7          	jalr	1540(ra) # 80001294 <_Z15thread_dispatchv>
}
    80006c98:	01813083          	ld	ra,24(sp)
    80006c9c:	01013403          	ld	s0,16(sp)
    80006ca0:	00813483          	ld	s1,8(sp)
    80006ca4:	00013903          	ld	s2,0(sp)
    80006ca8:	02010113          	addi	sp,sp,32
    80006cac:	00008067          	ret

0000000080006cb0 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80006cb0:	fe010113          	addi	sp,sp,-32
    80006cb4:	00113c23          	sd	ra,24(sp)
    80006cb8:	00813823          	sd	s0,16(sp)
    80006cbc:	00913423          	sd	s1,8(sp)
    80006cc0:	01213023          	sd	s2,0(sp)
    80006cc4:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80006cc8:	00000493          	li	s1,0
    80006ccc:	0400006f          	j	80006d0c <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80006cd0:	00004517          	auipc	a0,0x4
    80006cd4:	83050513          	addi	a0,a0,-2000 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	628080e7          	jalr	1576(ra) # 80006300 <_Z11printStringPKc>
    80006ce0:	00000613          	li	a2,0
    80006ce4:	00a00593          	li	a1,10
    80006ce8:	00048513          	mv	a0,s1
    80006cec:	fffff097          	auipc	ra,0xfffff
    80006cf0:	7c4080e7          	jalr	1988(ra) # 800064b0 <_Z8printIntiii>
    80006cf4:	00003517          	auipc	a0,0x3
    80006cf8:	48c50513          	addi	a0,a0,1164 # 8000a180 <CONSOLE_STATUS+0x170>
    80006cfc:	fffff097          	auipc	ra,0xfffff
    80006d00:	604080e7          	jalr	1540(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80006d04:	0014849b          	addiw	s1,s1,1
    80006d08:	0ff4f493          	andi	s1,s1,255
    80006d0c:	00200793          	li	a5,2
    80006d10:	fc97f0e3          	bgeu	a5,s1,80006cd0 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80006d14:	00003517          	auipc	a0,0x3
    80006d18:	7f450513          	addi	a0,a0,2036 # 8000a508 <CONSOLE_STATUS+0x4f8>
    80006d1c:	fffff097          	auipc	ra,0xfffff
    80006d20:	5e4080e7          	jalr	1508(ra) # 80006300 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80006d24:	00700313          	li	t1,7
    thread_dispatch();
    80006d28:	ffffa097          	auipc	ra,0xffffa
    80006d2c:	56c080e7          	jalr	1388(ra) # 80001294 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80006d30:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80006d34:	00003517          	auipc	a0,0x3
    80006d38:	7e450513          	addi	a0,a0,2020 # 8000a518 <CONSOLE_STATUS+0x508>
    80006d3c:	fffff097          	auipc	ra,0xfffff
    80006d40:	5c4080e7          	jalr	1476(ra) # 80006300 <_Z11printStringPKc>
    80006d44:	00000613          	li	a2,0
    80006d48:	00a00593          	li	a1,10
    80006d4c:	0009051b          	sext.w	a0,s2
    80006d50:	fffff097          	auipc	ra,0xfffff
    80006d54:	760080e7          	jalr	1888(ra) # 800064b0 <_Z8printIntiii>
    80006d58:	00003517          	auipc	a0,0x3
    80006d5c:	42850513          	addi	a0,a0,1064 # 8000a180 <CONSOLE_STATUS+0x170>
    80006d60:	fffff097          	auipc	ra,0xfffff
    80006d64:	5a0080e7          	jalr	1440(ra) # 80006300 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80006d68:	00c00513          	li	a0,12
    80006d6c:	00000097          	auipc	ra,0x0
    80006d70:	d88080e7          	jalr	-632(ra) # 80006af4 <_ZL9fibonaccim>
    80006d74:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80006d78:	00003517          	auipc	a0,0x3
    80006d7c:	7a850513          	addi	a0,a0,1960 # 8000a520 <CONSOLE_STATUS+0x510>
    80006d80:	fffff097          	auipc	ra,0xfffff
    80006d84:	580080e7          	jalr	1408(ra) # 80006300 <_Z11printStringPKc>
    80006d88:	00000613          	li	a2,0
    80006d8c:	00a00593          	li	a1,10
    80006d90:	0009051b          	sext.w	a0,s2
    80006d94:	fffff097          	auipc	ra,0xfffff
    80006d98:	71c080e7          	jalr	1820(ra) # 800064b0 <_Z8printIntiii>
    80006d9c:	00003517          	auipc	a0,0x3
    80006da0:	3e450513          	addi	a0,a0,996 # 8000a180 <CONSOLE_STATUS+0x170>
    80006da4:	fffff097          	auipc	ra,0xfffff
    80006da8:	55c080e7          	jalr	1372(ra) # 80006300 <_Z11printStringPKc>
    80006dac:	0400006f          	j	80006dec <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80006db0:	00003517          	auipc	a0,0x3
    80006db4:	75050513          	addi	a0,a0,1872 # 8000a500 <CONSOLE_STATUS+0x4f0>
    80006db8:	fffff097          	auipc	ra,0xfffff
    80006dbc:	548080e7          	jalr	1352(ra) # 80006300 <_Z11printStringPKc>
    80006dc0:	00000613          	li	a2,0
    80006dc4:	00a00593          	li	a1,10
    80006dc8:	00048513          	mv	a0,s1
    80006dcc:	fffff097          	auipc	ra,0xfffff
    80006dd0:	6e4080e7          	jalr	1764(ra) # 800064b0 <_Z8printIntiii>
    80006dd4:	00003517          	auipc	a0,0x3
    80006dd8:	3ac50513          	addi	a0,a0,940 # 8000a180 <CONSOLE_STATUS+0x170>
    80006ddc:	fffff097          	auipc	ra,0xfffff
    80006de0:	524080e7          	jalr	1316(ra) # 80006300 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80006de4:	0014849b          	addiw	s1,s1,1
    80006de8:	0ff4f493          	andi	s1,s1,255
    80006dec:	00500793          	li	a5,5
    80006df0:	fc97f0e3          	bgeu	a5,s1,80006db0 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80006df4:	00003517          	auipc	a0,0x3
    80006df8:	6e450513          	addi	a0,a0,1764 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006dfc:	fffff097          	auipc	ra,0xfffff
    80006e00:	504080e7          	jalr	1284(ra) # 80006300 <_Z11printStringPKc>
    finishedC = true;
    80006e04:	00100793          	li	a5,1
    80006e08:	00033717          	auipc	a4,0x33
    80006e0c:	22f705a3          	sb	a5,555(a4) # 8003a033 <_ZL9finishedC>
    thread_dispatch();
    80006e10:	ffffa097          	auipc	ra,0xffffa
    80006e14:	484080e7          	jalr	1156(ra) # 80001294 <_Z15thread_dispatchv>
}
    80006e18:	01813083          	ld	ra,24(sp)
    80006e1c:	01013403          	ld	s0,16(sp)
    80006e20:	00813483          	ld	s1,8(sp)
    80006e24:	00013903          	ld	s2,0(sp)
    80006e28:	02010113          	addi	sp,sp,32
    80006e2c:	00008067          	ret

0000000080006e30 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80006e30:	fe010113          	addi	sp,sp,-32
    80006e34:	00113c23          	sd	ra,24(sp)
    80006e38:	00813823          	sd	s0,16(sp)
    80006e3c:	00913423          	sd	s1,8(sp)
    80006e40:	01213023          	sd	s2,0(sp)
    80006e44:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80006e48:	00000913          	li	s2,0
    80006e4c:	0400006f          	j	80006e8c <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80006e50:	ffffa097          	auipc	ra,0xffffa
    80006e54:	444080e7          	jalr	1092(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006e58:	00148493          	addi	s1,s1,1
    80006e5c:	000027b7          	lui	a5,0x2
    80006e60:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006e64:	0097ee63          	bltu	a5,s1,80006e80 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006e68:	00000713          	li	a4,0
    80006e6c:	000077b7          	lui	a5,0x7
    80006e70:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006e74:	fce7eee3          	bltu	a5,a4,80006e50 <_ZL11workerBodyBPv+0x20>
    80006e78:	00170713          	addi	a4,a4,1
    80006e7c:	ff1ff06f          	j	80006e6c <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80006e80:	00a00793          	li	a5,10
    80006e84:	04f90663          	beq	s2,a5,80006ed0 <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80006e88:	00190913          	addi	s2,s2,1
    80006e8c:	00f00793          	li	a5,15
    80006e90:	0527e463          	bltu	a5,s2,80006ed8 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80006e94:	00003517          	auipc	a0,0x3
    80006e98:	65450513          	addi	a0,a0,1620 # 8000a4e8 <CONSOLE_STATUS+0x4d8>
    80006e9c:	fffff097          	auipc	ra,0xfffff
    80006ea0:	464080e7          	jalr	1124(ra) # 80006300 <_Z11printStringPKc>
    80006ea4:	00000613          	li	a2,0
    80006ea8:	00a00593          	li	a1,10
    80006eac:	0009051b          	sext.w	a0,s2
    80006eb0:	fffff097          	auipc	ra,0xfffff
    80006eb4:	600080e7          	jalr	1536(ra) # 800064b0 <_Z8printIntiii>
    80006eb8:	00003517          	auipc	a0,0x3
    80006ebc:	2c850513          	addi	a0,a0,712 # 8000a180 <CONSOLE_STATUS+0x170>
    80006ec0:	fffff097          	auipc	ra,0xfffff
    80006ec4:	440080e7          	jalr	1088(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006ec8:	00000493          	li	s1,0
    80006ecc:	f91ff06f          	j	80006e5c <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80006ed0:	14102ff3          	csrr	t6,sepc
    80006ed4:	fb5ff06f          	j	80006e88 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80006ed8:	00003517          	auipc	a0,0x3
    80006edc:	61850513          	addi	a0,a0,1560 # 8000a4f0 <CONSOLE_STATUS+0x4e0>
    80006ee0:	fffff097          	auipc	ra,0xfffff
    80006ee4:	420080e7          	jalr	1056(ra) # 80006300 <_Z11printStringPKc>
    finishedB = true;
    80006ee8:	00100793          	li	a5,1
    80006eec:	00033717          	auipc	a4,0x33
    80006ef0:	14f70423          	sb	a5,328(a4) # 8003a034 <_ZL9finishedB>
    thread_dispatch();
    80006ef4:	ffffa097          	auipc	ra,0xffffa
    80006ef8:	3a0080e7          	jalr	928(ra) # 80001294 <_Z15thread_dispatchv>
}
    80006efc:	01813083          	ld	ra,24(sp)
    80006f00:	01013403          	ld	s0,16(sp)
    80006f04:	00813483          	ld	s1,8(sp)
    80006f08:	00013903          	ld	s2,0(sp)
    80006f0c:	02010113          	addi	sp,sp,32
    80006f10:	00008067          	ret

0000000080006f14 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80006f14:	fe010113          	addi	sp,sp,-32
    80006f18:	00113c23          	sd	ra,24(sp)
    80006f1c:	00813823          	sd	s0,16(sp)
    80006f20:	00913423          	sd	s1,8(sp)
    80006f24:	01213023          	sd	s2,0(sp)
    80006f28:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80006f2c:	00000913          	li	s2,0
    80006f30:	0380006f          	j	80006f68 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80006f34:	ffffa097          	auipc	ra,0xffffa
    80006f38:	360080e7          	jalr	864(ra) # 80001294 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80006f3c:	00148493          	addi	s1,s1,1
    80006f40:	000027b7          	lui	a5,0x2
    80006f44:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80006f48:	0097ee63          	bltu	a5,s1,80006f64 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80006f4c:	00000713          	li	a4,0
    80006f50:	000077b7          	lui	a5,0x7
    80006f54:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80006f58:	fce7eee3          	bltu	a5,a4,80006f34 <_ZL11workerBodyAPv+0x20>
    80006f5c:	00170713          	addi	a4,a4,1
    80006f60:	ff1ff06f          	j	80006f50 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80006f64:	00190913          	addi	s2,s2,1
    80006f68:	00900793          	li	a5,9
    80006f6c:	0527e063          	bltu	a5,s2,80006fac <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80006f70:	00003517          	auipc	a0,0x3
    80006f74:	56050513          	addi	a0,a0,1376 # 8000a4d0 <CONSOLE_STATUS+0x4c0>
    80006f78:	fffff097          	auipc	ra,0xfffff
    80006f7c:	388080e7          	jalr	904(ra) # 80006300 <_Z11printStringPKc>
    80006f80:	00000613          	li	a2,0
    80006f84:	00a00593          	li	a1,10
    80006f88:	0009051b          	sext.w	a0,s2
    80006f8c:	fffff097          	auipc	ra,0xfffff
    80006f90:	524080e7          	jalr	1316(ra) # 800064b0 <_Z8printIntiii>
    80006f94:	00003517          	auipc	a0,0x3
    80006f98:	1ec50513          	addi	a0,a0,492 # 8000a180 <CONSOLE_STATUS+0x170>
    80006f9c:	fffff097          	auipc	ra,0xfffff
    80006fa0:	364080e7          	jalr	868(ra) # 80006300 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80006fa4:	00000493          	li	s1,0
    80006fa8:	f99ff06f          	j	80006f40 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80006fac:	00003517          	auipc	a0,0x3
    80006fb0:	52c50513          	addi	a0,a0,1324 # 8000a4d8 <CONSOLE_STATUS+0x4c8>
    80006fb4:	fffff097          	auipc	ra,0xfffff
    80006fb8:	34c080e7          	jalr	844(ra) # 80006300 <_Z11printStringPKc>
    finishedA = true;
    80006fbc:	00100793          	li	a5,1
    80006fc0:	00033717          	auipc	a4,0x33
    80006fc4:	06f70aa3          	sb	a5,117(a4) # 8003a035 <_ZL9finishedA>
}
    80006fc8:	01813083          	ld	ra,24(sp)
    80006fcc:	01013403          	ld	s0,16(sp)
    80006fd0:	00813483          	ld	s1,8(sp)
    80006fd4:	00013903          	ld	s2,0(sp)
    80006fd8:	02010113          	addi	sp,sp,32
    80006fdc:	00008067          	ret

0000000080006fe0 <_Z16System_Mode_testv>:


void System_Mode_test() {
    80006fe0:	fd010113          	addi	sp,sp,-48
    80006fe4:	02113423          	sd	ra,40(sp)
    80006fe8:	02813023          	sd	s0,32(sp)
    80006fec:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80006ff0:	00000613          	li	a2,0
    80006ff4:	00000597          	auipc	a1,0x0
    80006ff8:	f2058593          	addi	a1,a1,-224 # 80006f14 <_ZL11workerBodyAPv>
    80006ffc:	fd040513          	addi	a0,s0,-48
    80007000:	ffffa097          	auipc	ra,0xffffa
    80007004:	1e4080e7          	jalr	484(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80007008:	00003517          	auipc	a0,0x3
    8000700c:	57050513          	addi	a0,a0,1392 # 8000a578 <CONSOLE_STATUS+0x568>
    80007010:	fffff097          	auipc	ra,0xfffff
    80007014:	2f0080e7          	jalr	752(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80007018:	00000613          	li	a2,0
    8000701c:	00000597          	auipc	a1,0x0
    80007020:	e1458593          	addi	a1,a1,-492 # 80006e30 <_ZL11workerBodyBPv>
    80007024:	fd840513          	addi	a0,s0,-40
    80007028:	ffffa097          	auipc	ra,0xffffa
    8000702c:	1bc080e7          	jalr	444(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80007030:	00003517          	auipc	a0,0x3
    80007034:	56050513          	addi	a0,a0,1376 # 8000a590 <CONSOLE_STATUS+0x580>
    80007038:	fffff097          	auipc	ra,0xfffff
    8000703c:	2c8080e7          	jalr	712(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80007040:	00000613          	li	a2,0
    80007044:	00000597          	auipc	a1,0x0
    80007048:	c6c58593          	addi	a1,a1,-916 # 80006cb0 <_ZL11workerBodyCPv>
    8000704c:	fe040513          	addi	a0,s0,-32
    80007050:	ffffa097          	auipc	ra,0xffffa
    80007054:	194080e7          	jalr	404(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80007058:	00003517          	auipc	a0,0x3
    8000705c:	55050513          	addi	a0,a0,1360 # 8000a5a8 <CONSOLE_STATUS+0x598>
    80007060:	fffff097          	auipc	ra,0xfffff
    80007064:	2a0080e7          	jalr	672(ra) # 80006300 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80007068:	00000613          	li	a2,0
    8000706c:	00000597          	auipc	a1,0x0
    80007070:	afc58593          	addi	a1,a1,-1284 # 80006b68 <_ZL11workerBodyDPv>
    80007074:	fe840513          	addi	a0,s0,-24
    80007078:	ffffa097          	auipc	ra,0xffffa
    8000707c:	16c080e7          	jalr	364(ra) # 800011e4 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80007080:	00003517          	auipc	a0,0x3
    80007084:	54050513          	addi	a0,a0,1344 # 8000a5c0 <CONSOLE_STATUS+0x5b0>
    80007088:	fffff097          	auipc	ra,0xfffff
    8000708c:	278080e7          	jalr	632(ra) # 80006300 <_Z11printStringPKc>
    80007090:	00c0006f          	j	8000709c <_Z16System_Mode_testv+0xbc>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80007094:	ffffa097          	auipc	ra,0xffffa
    80007098:	200080e7          	jalr	512(ra) # 80001294 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    8000709c:	00033797          	auipc	a5,0x33
    800070a0:	f997c783          	lbu	a5,-103(a5) # 8003a035 <_ZL9finishedA>
    800070a4:	fe0788e3          	beqz	a5,80007094 <_Z16System_Mode_testv+0xb4>
    800070a8:	00033797          	auipc	a5,0x33
    800070ac:	f8c7c783          	lbu	a5,-116(a5) # 8003a034 <_ZL9finishedB>
    800070b0:	fe0782e3          	beqz	a5,80007094 <_Z16System_Mode_testv+0xb4>
    800070b4:	00033797          	auipc	a5,0x33
    800070b8:	f7f7c783          	lbu	a5,-129(a5) # 8003a033 <_ZL9finishedC>
    800070bc:	fc078ce3          	beqz	a5,80007094 <_Z16System_Mode_testv+0xb4>
    800070c0:	00033797          	auipc	a5,0x33
    800070c4:	f727c783          	lbu	a5,-142(a5) # 8003a032 <_ZL9finishedD>
    800070c8:	fc0786e3          	beqz	a5,80007094 <_Z16System_Mode_testv+0xb4>
    }
}
    800070cc:	02813083          	ld	ra,40(sp)
    800070d0:	02013403          	ld	s0,32(sp)
    800070d4:	03010113          	addi	sp,sp,48
    800070d8:	00008067          	ret

00000000800070dc <_Z9allocTestv>:
        putc('\n');
    }
private:
    int i;
};
void allocTest(){
    800070dc:	cc010113          	addi	sp,sp,-832
    800070e0:	32113c23          	sd	ra,824(sp)
    800070e4:	32813823          	sd	s0,816(sp)
    800070e8:	32913423          	sd	s1,808(sp)
    800070ec:	33213023          	sd	s2,800(sp)
    800070f0:	34010413          	addi	s0,sp,832
    K* arr[100];
    for(int i=0;i<100;i++){
    800070f4:	00000913          	li	s2,0
    800070f8:	0340006f          	j	8000712c <_Z9allocTestv+0x50>
    K(int ii):i(ii){}
    800070fc:	00006797          	auipc	a5,0x6
    80007100:	33c78793          	addi	a5,a5,828 # 8000d438 <_ZTV1K+0x10>
    80007104:	00f4b023          	sd	a5,0(s1)
    80007108:	0324a023          	sw	s2,32(s1)
        arr[i]=new K(i);
    8000710c:	00391793          	slli	a5,s2,0x3
    80007110:	fe040713          	addi	a4,s0,-32
    80007114:	00f707b3          	add	a5,a4,a5
    80007118:	ce97b023          	sd	s1,-800(a5)
        arr[i]->start();
    8000711c:	00048513          	mv	a0,s1
    80007120:	ffffb097          	auipc	ra,0xffffb
    80007124:	6f0080e7          	jalr	1776(ra) # 80002810 <_ZN6Thread5startEv>
    for(int i=0;i<100;i++){
    80007128:	0019091b          	addiw	s2,s2,1
    8000712c:	06300793          	li	a5,99
    80007130:	0327c063          	blt	a5,s2,80007150 <_Z9allocTestv+0x74>
        arr[i]=new K(i);
    80007134:	02800513          	li	a0,40
    80007138:	ffffb097          	auipc	ra,0xffffb
    8000713c:	568080e7          	jalr	1384(ra) # 800026a0 <_Znwm>
    80007140:	00050493          	mv	s1,a0
    K(int ii):i(ii){}
    80007144:	ffffb097          	auipc	ra,0xffffb
    80007148:	680080e7          	jalr	1664(ra) # 800027c4 <_ZN6ThreadC1Ev>
    8000714c:	fb1ff06f          	j	800070fc <_Z9allocTestv+0x20>
    }
    thread_dispatch();
    80007150:	ffffa097          	auipc	ra,0xffffa
    80007154:	144080e7          	jalr	324(ra) # 80001294 <_Z15thread_dispatchv>
    for(int i=0;i<10;i++){
    80007158:	00000493          	li	s1,0
    8000715c:	0080006f          	j	80007164 <_Z9allocTestv+0x88>
    80007160:	0014849b          	addiw	s1,s1,1
    80007164:	00900793          	li	a5,9
    80007168:	0497c263          	blt	a5,s1,800071ac <_Z9allocTestv+0xd0>
        delete arr[i];
    8000716c:	00349793          	slli	a5,s1,0x3
    80007170:	fe040713          	addi	a4,s0,-32
    80007174:	00f707b3          	add	a5,a4,a5
    80007178:	ce07b503          	ld	a0,-800(a5)
    8000717c:	fe0502e3          	beqz	a0,80007160 <_Z9allocTestv+0x84>
    80007180:	00053783          	ld	a5,0(a0)
    80007184:	0087b783          	ld	a5,8(a5)
    80007188:	000780e7          	jalr	a5
    8000718c:	fd5ff06f          	j	80007160 <_Z9allocTestv+0x84>
    80007190:	00050913          	mv	s2,a0
        arr[i]=new K(i);
    80007194:	00048513          	mv	a0,s1
    80007198:	ffffb097          	auipc	ra,0xffffb
    8000719c:	530080e7          	jalr	1328(ra) # 800026c8 <_ZdlPv>
    800071a0:	00090513          	mv	a0,s2
    800071a4:	00034097          	auipc	ra,0x34
    800071a8:	f64080e7          	jalr	-156(ra) # 8003b108 <_Unwind_Resume>
    }
    800071ac:	33813083          	ld	ra,824(sp)
    800071b0:	33013403          	ld	s0,816(sp)
    800071b4:	32813483          	ld	s1,808(sp)
    800071b8:	32013903          	ld	s2,800(sp)
    800071bc:	34010113          	addi	sp,sp,832
    800071c0:	00008067          	ret

00000000800071c4 <_ZN1K3runEv>:
    void run() override{
    800071c4:	ff010113          	addi	sp,sp,-16
    800071c8:	00113423          	sd	ra,8(sp)
    800071cc:	00813023          	sd	s0,0(sp)
    800071d0:	01010413          	addi	s0,sp,16
        putc('0'+i);
    800071d4:	02052503          	lw	a0,32(a0)
    800071d8:	0305051b          	addiw	a0,a0,48
    800071dc:	0ff57513          	andi	a0,a0,255
    800071e0:	ffffa097          	auipc	ra,0xffffa
    800071e4:	2f4080e7          	jalr	756(ra) # 800014d4 <_Z4putcc>
        putc('\n');
    800071e8:	00a00513          	li	a0,10
    800071ec:	ffffa097          	auipc	ra,0xffffa
    800071f0:	2e8080e7          	jalr	744(ra) # 800014d4 <_Z4putcc>
    }
    800071f4:	00813083          	ld	ra,8(sp)
    800071f8:	00013403          	ld	s0,0(sp)
    800071fc:	01010113          	addi	sp,sp,16
    80007200:	00008067          	ret

0000000080007204 <_ZN1KD1Ev>:
class K:public Thread{
    80007204:	ff010113          	addi	sp,sp,-16
    80007208:	00113423          	sd	ra,8(sp)
    8000720c:	00813023          	sd	s0,0(sp)
    80007210:	01010413          	addi	s0,sp,16
    80007214:	00006797          	auipc	a5,0x6
    80007218:	22478793          	addi	a5,a5,548 # 8000d438 <_ZTV1K+0x10>
    8000721c:	00f53023          	sd	a5,0(a0)
    80007220:	ffffb097          	auipc	ra,0xffffb
    80007224:	3dc080e7          	jalr	988(ra) # 800025fc <_ZN6ThreadD1Ev>
    80007228:	00813083          	ld	ra,8(sp)
    8000722c:	00013403          	ld	s0,0(sp)
    80007230:	01010113          	addi	sp,sp,16
    80007234:	00008067          	ret

0000000080007238 <_ZN1KD0Ev>:
    80007238:	fe010113          	addi	sp,sp,-32
    8000723c:	00113c23          	sd	ra,24(sp)
    80007240:	00813823          	sd	s0,16(sp)
    80007244:	00913423          	sd	s1,8(sp)
    80007248:	02010413          	addi	s0,sp,32
    8000724c:	00050493          	mv	s1,a0
    80007250:	00006797          	auipc	a5,0x6
    80007254:	1e878793          	addi	a5,a5,488 # 8000d438 <_ZTV1K+0x10>
    80007258:	00f53023          	sd	a5,0(a0)
    8000725c:	ffffb097          	auipc	ra,0xffffb
    80007260:	3a0080e7          	jalr	928(ra) # 800025fc <_ZN6ThreadD1Ev>
    80007264:	00048513          	mv	a0,s1
    80007268:	ffffb097          	auipc	ra,0xffffb
    8000726c:	460080e7          	jalr	1120(ra) # 800026c8 <_ZdlPv>
    80007270:	01813083          	ld	ra,24(sp)
    80007274:	01013403          	ld	s0,16(sp)
    80007278:	00813483          	ld	s1,8(sp)
    8000727c:	02010113          	addi	sp,sp,32
    80007280:	00008067          	ret

0000000080007284 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80007284:	fe010113          	addi	sp,sp,-32
    80007288:	00113c23          	sd	ra,24(sp)
    8000728c:	00813823          	sd	s0,16(sp)
    80007290:	00913423          	sd	s1,8(sp)
    80007294:	01213023          	sd	s2,0(sp)
    80007298:	02010413          	addi	s0,sp,32
    8000729c:	00050493          	mv	s1,a0
    800072a0:	00058913          	mv	s2,a1
    800072a4:	0015879b          	addiw	a5,a1,1
    800072a8:	0007851b          	sext.w	a0,a5
    800072ac:	00f4a023          	sw	a5,0(s1)
    800072b0:	0004a823          	sw	zero,16(s1)
    800072b4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800072b8:	00251513          	slli	a0,a0,0x2
    800072bc:	ffffa097          	auipc	ra,0xffffa
    800072c0:	e94080e7          	jalr	-364(ra) # 80001150 <_Z9mem_allocm>
    800072c4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800072c8:	00000593          	li	a1,0
    800072cc:	02048513          	addi	a0,s1,32
    800072d0:	ffffa097          	auipc	ra,0xffffa
    800072d4:	000080e7          	jalr	ra # 800012d0 <_Z8sem_openPP4SemCj>
    sem_open(&spaceAvailable, _cap);
    800072d8:	00090593          	mv	a1,s2
    800072dc:	01848513          	addi	a0,s1,24
    800072e0:	ffffa097          	auipc	ra,0xffffa
    800072e4:	ff0080e7          	jalr	-16(ra) # 800012d0 <_Z8sem_openPP4SemCj>
    sem_open(&mutexHead, 1);
    800072e8:	00100593          	li	a1,1
    800072ec:	02848513          	addi	a0,s1,40
    800072f0:	ffffa097          	auipc	ra,0xffffa
    800072f4:	fe0080e7          	jalr	-32(ra) # 800012d0 <_Z8sem_openPP4SemCj>
    sem_open(&mutexTail, 1);
    800072f8:	00100593          	li	a1,1
    800072fc:	03048513          	addi	a0,s1,48
    80007300:	ffffa097          	auipc	ra,0xffffa
    80007304:	fd0080e7          	jalr	-48(ra) # 800012d0 <_Z8sem_openPP4SemCj>
}
    80007308:	01813083          	ld	ra,24(sp)
    8000730c:	01013403          	ld	s0,16(sp)
    80007310:	00813483          	ld	s1,8(sp)
    80007314:	00013903          	ld	s2,0(sp)
    80007318:	02010113          	addi	sp,sp,32
    8000731c:	00008067          	ret

0000000080007320 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80007320:	fe010113          	addi	sp,sp,-32
    80007324:	00113c23          	sd	ra,24(sp)
    80007328:	00813823          	sd	s0,16(sp)
    8000732c:	00913423          	sd	s1,8(sp)
    80007330:	01213023          	sd	s2,0(sp)
    80007334:	02010413          	addi	s0,sp,32
    80007338:	00050493          	mv	s1,a0
    8000733c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80007340:	01853503          	ld	a0,24(a0)
    80007344:	ffffa097          	auipc	ra,0xffffa
    80007348:	010080e7          	jalr	16(ra) # 80001354 <_Z8sem_waitP4SemC>

    sem_wait(mutexTail);
    8000734c:	0304b503          	ld	a0,48(s1)
    80007350:	ffffa097          	auipc	ra,0xffffa
    80007354:	004080e7          	jalr	4(ra) # 80001354 <_Z8sem_waitP4SemC>
    buffer[tail] = val;
    80007358:	0084b783          	ld	a5,8(s1)
    8000735c:	0144a703          	lw	a4,20(s1)
    80007360:	00271713          	slli	a4,a4,0x2
    80007364:	00e787b3          	add	a5,a5,a4
    80007368:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000736c:	0144a783          	lw	a5,20(s1)
    80007370:	0017879b          	addiw	a5,a5,1
    80007374:	0004a703          	lw	a4,0(s1)
    80007378:	02e7e7bb          	remw	a5,a5,a4
    8000737c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80007380:	0304b503          	ld	a0,48(s1)
    80007384:	ffffa097          	auipc	ra,0xffffa
    80007388:	010080e7          	jalr	16(ra) # 80001394 <_Z10sem_signalP4SemC>

    sem_signal(itemAvailable);
    8000738c:	0204b503          	ld	a0,32(s1)
    80007390:	ffffa097          	auipc	ra,0xffffa
    80007394:	004080e7          	jalr	4(ra) # 80001394 <_Z10sem_signalP4SemC>

}
    80007398:	01813083          	ld	ra,24(sp)
    8000739c:	01013403          	ld	s0,16(sp)
    800073a0:	00813483          	ld	s1,8(sp)
    800073a4:	00013903          	ld	s2,0(sp)
    800073a8:	02010113          	addi	sp,sp,32
    800073ac:	00008067          	ret

00000000800073b0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800073b0:	fe010113          	addi	sp,sp,-32
    800073b4:	00113c23          	sd	ra,24(sp)
    800073b8:	00813823          	sd	s0,16(sp)
    800073bc:	00913423          	sd	s1,8(sp)
    800073c0:	01213023          	sd	s2,0(sp)
    800073c4:	02010413          	addi	s0,sp,32
    800073c8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800073cc:	02053503          	ld	a0,32(a0)
    800073d0:	ffffa097          	auipc	ra,0xffffa
    800073d4:	f84080e7          	jalr	-124(ra) # 80001354 <_Z8sem_waitP4SemC>

    sem_wait(mutexHead);
    800073d8:	0284b503          	ld	a0,40(s1)
    800073dc:	ffffa097          	auipc	ra,0xffffa
    800073e0:	f78080e7          	jalr	-136(ra) # 80001354 <_Z8sem_waitP4SemC>

    int ret = buffer[head];
    800073e4:	0084b703          	ld	a4,8(s1)
    800073e8:	0104a783          	lw	a5,16(s1)
    800073ec:	00279693          	slli	a3,a5,0x2
    800073f0:	00d70733          	add	a4,a4,a3
    800073f4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800073f8:	0017879b          	addiw	a5,a5,1
    800073fc:	0004a703          	lw	a4,0(s1)
    80007400:	02e7e7bb          	remw	a5,a5,a4
    80007404:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80007408:	0284b503          	ld	a0,40(s1)
    8000740c:	ffffa097          	auipc	ra,0xffffa
    80007410:	f88080e7          	jalr	-120(ra) # 80001394 <_Z10sem_signalP4SemC>

    sem_signal(spaceAvailable);
    80007414:	0184b503          	ld	a0,24(s1)
    80007418:	ffffa097          	auipc	ra,0xffffa
    8000741c:	f7c080e7          	jalr	-132(ra) # 80001394 <_Z10sem_signalP4SemC>

    return ret;
}
    80007420:	00090513          	mv	a0,s2
    80007424:	01813083          	ld	ra,24(sp)
    80007428:	01013403          	ld	s0,16(sp)
    8000742c:	00813483          	ld	s1,8(sp)
    80007430:	00013903          	ld	s2,0(sp)
    80007434:	02010113          	addi	sp,sp,32
    80007438:	00008067          	ret

000000008000743c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000743c:	fe010113          	addi	sp,sp,-32
    80007440:	00113c23          	sd	ra,24(sp)
    80007444:	00813823          	sd	s0,16(sp)
    80007448:	00913423          	sd	s1,8(sp)
    8000744c:	01213023          	sd	s2,0(sp)
    80007450:	02010413          	addi	s0,sp,32
    80007454:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80007458:	02853503          	ld	a0,40(a0)
    8000745c:	ffffa097          	auipc	ra,0xffffa
    80007460:	ef8080e7          	jalr	-264(ra) # 80001354 <_Z8sem_waitP4SemC>
    sem_wait(mutexTail);
    80007464:	0304b503          	ld	a0,48(s1)
    80007468:	ffffa097          	auipc	ra,0xffffa
    8000746c:	eec080e7          	jalr	-276(ra) # 80001354 <_Z8sem_waitP4SemC>

    if (tail >= head) {
    80007470:	0144a783          	lw	a5,20(s1)
    80007474:	0104a903          	lw	s2,16(s1)
    80007478:	0327ce63          	blt	a5,s2,800074b4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000747c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80007480:	0304b503          	ld	a0,48(s1)
    80007484:	ffffa097          	auipc	ra,0xffffa
    80007488:	f10080e7          	jalr	-240(ra) # 80001394 <_Z10sem_signalP4SemC>
    sem_signal(mutexHead);
    8000748c:	0284b503          	ld	a0,40(s1)
    80007490:	ffffa097          	auipc	ra,0xffffa
    80007494:	f04080e7          	jalr	-252(ra) # 80001394 <_Z10sem_signalP4SemC>

    return ret;
}
    80007498:	00090513          	mv	a0,s2
    8000749c:	01813083          	ld	ra,24(sp)
    800074a0:	01013403          	ld	s0,16(sp)
    800074a4:	00813483          	ld	s1,8(sp)
    800074a8:	00013903          	ld	s2,0(sp)
    800074ac:	02010113          	addi	sp,sp,32
    800074b0:	00008067          	ret
        ret = cap - head + tail;
    800074b4:	0004a703          	lw	a4,0(s1)
    800074b8:	4127093b          	subw	s2,a4,s2
    800074bc:	00f9093b          	addw	s2,s2,a5
    800074c0:	fc1ff06f          	j	80007480 <_ZN6Buffer6getCntEv+0x44>

00000000800074c4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800074c4:	fe010113          	addi	sp,sp,-32
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	00813823          	sd	s0,16(sp)
    800074d0:	00913423          	sd	s1,8(sp)
    800074d4:	02010413          	addi	s0,sp,32
    800074d8:	00050493          	mv	s1,a0
    putc('\n');
    800074dc:	00a00513          	li	a0,10
    800074e0:	ffffa097          	auipc	ra,0xffffa
    800074e4:	ff4080e7          	jalr	-12(ra) # 800014d4 <_Z4putcc>
    printString("Buffer deleted!\n");
    800074e8:	00003517          	auipc	a0,0x3
    800074ec:	0f050513          	addi	a0,a0,240 # 8000a5d8 <CONSOLE_STATUS+0x5c8>
    800074f0:	fffff097          	auipc	ra,0xfffff
    800074f4:	e10080e7          	jalr	-496(ra) # 80006300 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800074f8:	00048513          	mv	a0,s1
    800074fc:	00000097          	auipc	ra,0x0
    80007500:	f40080e7          	jalr	-192(ra) # 8000743c <_ZN6Buffer6getCntEv>
    80007504:	02a05c63          	blez	a0,8000753c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80007508:	0084b783          	ld	a5,8(s1)
    8000750c:	0104a703          	lw	a4,16(s1)
    80007510:	00271713          	slli	a4,a4,0x2
    80007514:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80007518:	0007c503          	lbu	a0,0(a5)
    8000751c:	ffffa097          	auipc	ra,0xffffa
    80007520:	fb8080e7          	jalr	-72(ra) # 800014d4 <_Z4putcc>
        head = (head + 1) % cap;
    80007524:	0104a783          	lw	a5,16(s1)
    80007528:	0017879b          	addiw	a5,a5,1
    8000752c:	0004a703          	lw	a4,0(s1)
    80007530:	02e7e7bb          	remw	a5,a5,a4
    80007534:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80007538:	fc1ff06f          	j	800074f8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000753c:	02100513          	li	a0,33
    80007540:	ffffa097          	auipc	ra,0xffffa
    80007544:	f94080e7          	jalr	-108(ra) # 800014d4 <_Z4putcc>
    putc('\n');
    80007548:	00a00513          	li	a0,10
    8000754c:	ffffa097          	auipc	ra,0xffffa
    80007550:	f88080e7          	jalr	-120(ra) # 800014d4 <_Z4putcc>
    mem_free(buffer);
    80007554:	0084b503          	ld	a0,8(s1)
    80007558:	ffffa097          	auipc	ra,0xffffa
    8000755c:	c4c080e7          	jalr	-948(ra) # 800011a4 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80007560:	0204b503          	ld	a0,32(s1)
    80007564:	ffffa097          	auipc	ra,0xffffa
    80007568:	db0080e7          	jalr	-592(ra) # 80001314 <_Z9sem_closeP4SemC>
    sem_close(spaceAvailable);
    8000756c:	0184b503          	ld	a0,24(s1)
    80007570:	ffffa097          	auipc	ra,0xffffa
    80007574:	da4080e7          	jalr	-604(ra) # 80001314 <_Z9sem_closeP4SemC>
    sem_close(mutexTail);
    80007578:	0304b503          	ld	a0,48(s1)
    8000757c:	ffffa097          	auipc	ra,0xffffa
    80007580:	d98080e7          	jalr	-616(ra) # 80001314 <_Z9sem_closeP4SemC>
    sem_close(mutexHead);
    80007584:	0284b503          	ld	a0,40(s1)
    80007588:	ffffa097          	auipc	ra,0xffffa
    8000758c:	d8c080e7          	jalr	-628(ra) # 80001314 <_Z9sem_closeP4SemC>
}
    80007590:	01813083          	ld	ra,24(sp)
    80007594:	01013403          	ld	s0,16(sp)
    80007598:	00813483          	ld	s1,8(sp)
    8000759c:	02010113          	addi	sp,sp,32
    800075a0:	00008067          	ret

00000000800075a4 <_Z12periodicTestv>:
private:
    bool over=false;
    char chr;
    int cnt;
};
void periodicTest(){
    800075a4:	fe010113          	addi	sp,sp,-32
    800075a8:	00113c23          	sd	ra,24(sp)
    800075ac:	00813823          	sd	s0,16(sp)
    800075b0:	00913423          	sd	s1,8(sp)
    800075b4:	01213023          	sd	s2,0(sp)
    800075b8:	02010413          	addi	s0,sp,32
    A *threads[2];
    threads[0]=new A(5,'a',2);
    800075bc:	03000513          	li	a0,48
    800075c0:	ffffb097          	auipc	ra,0xffffb
    800075c4:	0e0080e7          	jalr	224(ra) # 800026a0 <_Znwm>
    800075c8:	00050493          	mv	s1,a0
    A(int cn, char c,time_t t): PeriodicThread(t){
    800075cc:	00200593          	li	a1,2
    800075d0:	ffffb097          	auipc	ra,0xffffb
    800075d4:	30c080e7          	jalr	780(ra) # 800028dc <_ZN14PeriodicThreadC1Em>
    800075d8:	00006797          	auipc	a5,0x6
    800075dc:	e8878793          	addi	a5,a5,-376 # 8000d460 <_ZTV1A+0x10>
    800075e0:	00f4b023          	sd	a5,0(s1)
    800075e4:	02048423          	sb	zero,40(s1)
        cnt=cn;
    800075e8:	00500793          	li	a5,5
    800075ec:	02f4a623          	sw	a5,44(s1)
        chr=c;
    800075f0:	06100793          	li	a5,97
    800075f4:	02f484a3          	sb	a5,41(s1)
    threads[1]=new A(10,'b',4);
    800075f8:	03000513          	li	a0,48
    800075fc:	ffffb097          	auipc	ra,0xffffb
    80007600:	0a4080e7          	jalr	164(ra) # 800026a0 <_Znwm>
    80007604:	00050913          	mv	s2,a0
    A(int cn, char c,time_t t): PeriodicThread(t){
    80007608:	00400593          	li	a1,4
    8000760c:	ffffb097          	auipc	ra,0xffffb
    80007610:	2d0080e7          	jalr	720(ra) # 800028dc <_ZN14PeriodicThreadC1Em>
    80007614:	00006797          	auipc	a5,0x6
    80007618:	e4c78793          	addi	a5,a5,-436 # 8000d460 <_ZTV1A+0x10>
    8000761c:	00f93023          	sd	a5,0(s2)
    80007620:	02090423          	sb	zero,40(s2)
        cnt=cn;
    80007624:	00a00793          	li	a5,10
    80007628:	02f92623          	sw	a5,44(s2)
        chr=c;
    8000762c:	06200793          	li	a5,98
    80007630:	02f904a3          	sb	a5,41(s2)
    threads[0]->start();
    80007634:	00048513          	mv	a0,s1
    80007638:	ffffb097          	auipc	ra,0xffffb
    8000763c:	1d8080e7          	jalr	472(ra) # 80002810 <_ZN6Thread5startEv>
    threads[1]->start();
    80007640:	00090513          	mv	a0,s2
    80007644:	ffffb097          	auipc	ra,0xffffb
    80007648:	1cc080e7          	jalr	460(ra) # 80002810 <_ZN6Thread5startEv>
    bool getOver()const {return over;}
    8000764c:	0284c783          	lbu	a5,40(s1)
    while(!threads[0]->getOver()||!threads[1]->getOver()){}
    80007650:	fe078ee3          	beqz	a5,8000764c <_Z12periodicTestv+0xa8>
    bool getOver()const {return over;}
    80007654:	02894783          	lbu	a5,40(s2)
    while(!threads[0]->getOver()||!threads[1]->getOver()){}
    80007658:	fe078ae3          	beqz	a5,8000764c <_Z12periodicTestv+0xa8>
    8000765c:	01813083          	ld	ra,24(sp)
    80007660:	01013403          	ld	s0,16(sp)
    80007664:	00813483          	ld	s1,8(sp)
    80007668:	00013903          	ld	s2,0(sp)
    8000766c:	02010113          	addi	sp,sp,32
    80007670:	00008067          	ret
    80007674:	00050913          	mv	s2,a0
    threads[0]=new A(5,'a',2);
    80007678:	00048513          	mv	a0,s1
    8000767c:	ffffb097          	auipc	ra,0xffffb
    80007680:	04c080e7          	jalr	76(ra) # 800026c8 <_ZdlPv>
    80007684:	00090513          	mv	a0,s2
    80007688:	00034097          	auipc	ra,0x34
    8000768c:	a80080e7          	jalr	-1408(ra) # 8003b108 <_Unwind_Resume>
    80007690:	00050493          	mv	s1,a0
    threads[1]=new A(10,'b',4);
    80007694:	00090513          	mv	a0,s2
    80007698:	ffffb097          	auipc	ra,0xffffb
    8000769c:	030080e7          	jalr	48(ra) # 800026c8 <_ZdlPv>
    800076a0:	00048513          	mv	a0,s1
    800076a4:	00034097          	auipc	ra,0x34
    800076a8:	a64080e7          	jalr	-1436(ra) # 8003b108 <_Unwind_Resume>

00000000800076ac <_ZN1A18periodicActivationEv>:
    void periodicActivation() override{
    800076ac:	fe010113          	addi	sp,sp,-32
    800076b0:	00113c23          	sd	ra,24(sp)
    800076b4:	00813823          	sd	s0,16(sp)
    800076b8:	00913423          	sd	s1,8(sp)
    800076bc:	02010413          	addi	s0,sp,32
    800076c0:	00050493          	mv	s1,a0
        putc(chr);
    800076c4:	02954503          	lbu	a0,41(a0)
    800076c8:	ffffa097          	auipc	ra,0xffffa
    800076cc:	e0c080e7          	jalr	-500(ra) # 800014d4 <_Z4putcc>
        putc('\n');
    800076d0:	00a00513          	li	a0,10
    800076d4:	ffffa097          	auipc	ra,0xffffa
    800076d8:	e00080e7          	jalr	-512(ra) # 800014d4 <_Z4putcc>
        if(--cnt<0){
    800076dc:	02c4a783          	lw	a5,44(s1)
    800076e0:	fff7879b          	addiw	a5,a5,-1
    800076e4:	02f4a623          	sw	a5,44(s1)
    800076e8:	02079713          	slli	a4,a5,0x20
    800076ec:	00074c63          	bltz	a4,80007704 <_ZN1A18periodicActivationEv+0x58>
    }
    800076f0:	01813083          	ld	ra,24(sp)
    800076f4:	01013403          	ld	s0,16(sp)
    800076f8:	00813483          	ld	s1,8(sp)
    800076fc:	02010113          	addi	sp,sp,32
    80007700:	00008067          	ret
            terminate();
    80007704:	00048513          	mv	a0,s1
    80007708:	ffffb097          	auipc	ra,0xffffb
    8000770c:	224080e7          	jalr	548(ra) # 8000292c <_ZN14PeriodicThread9terminateEv>
            over=true;
    80007710:	00100793          	li	a5,1
    80007714:	02f48423          	sb	a5,40(s1)
    }
    80007718:	fd9ff06f          	j	800076f0 <_ZN1A18periodicActivationEv+0x44>

000000008000771c <_ZN1AD1Ev>:
class A:public PeriodicThread{
    8000771c:	ff010113          	addi	sp,sp,-16
    80007720:	00113423          	sd	ra,8(sp)
    80007724:	00813023          	sd	s0,0(sp)
    80007728:	01010413          	addi	s0,sp,16
    int timedWait (time_t);
    int tryWait();
private:
    sem_t myHandle;
};
class PeriodicThread : public Thread {
    8000772c:	00006797          	auipc	a5,0x6
    80007730:	d747b783          	ld	a5,-652(a5) # 8000d4a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80007734:	01078793          	addi	a5,a5,16
    80007738:	00f53023          	sd	a5,0(a0)
    8000773c:	ffffb097          	auipc	ra,0xffffb
    80007740:	ec0080e7          	jalr	-320(ra) # 800025fc <_ZN6ThreadD1Ev>
    80007744:	00813083          	ld	ra,8(sp)
    80007748:	00013403          	ld	s0,0(sp)
    8000774c:	01010113          	addi	sp,sp,16
    80007750:	00008067          	ret

0000000080007754 <_ZN1AD0Ev>:
    80007754:	fe010113          	addi	sp,sp,-32
    80007758:	00113c23          	sd	ra,24(sp)
    8000775c:	00813823          	sd	s0,16(sp)
    80007760:	00913423          	sd	s1,8(sp)
    80007764:	02010413          	addi	s0,sp,32
    80007768:	00050493          	mv	s1,a0
    8000776c:	00006797          	auipc	a5,0x6
    80007770:	d347b783          	ld	a5,-716(a5) # 8000d4a0 <_GLOBAL_OFFSET_TABLE_+0x20>
    80007774:	01078793          	addi	a5,a5,16
    80007778:	00f53023          	sd	a5,0(a0)
    8000777c:	ffffb097          	auipc	ra,0xffffb
    80007780:	e80080e7          	jalr	-384(ra) # 800025fc <_ZN6ThreadD1Ev>
    80007784:	00048513          	mv	a0,s1
    80007788:	ffffb097          	auipc	ra,0xffffb
    8000778c:	f40080e7          	jalr	-192(ra) # 800026c8 <_ZdlPv>
    80007790:	01813083          	ld	ra,24(sp)
    80007794:	01013403          	ld	s0,16(sp)
    80007798:	00813483          	ld	s1,8(sp)
    8000779c:	02010113          	addi	sp,sp,32
    800077a0:	00008067          	ret

00000000800077a4 <start>:
    800077a4:	ff010113          	addi	sp,sp,-16
    800077a8:	00813423          	sd	s0,8(sp)
    800077ac:	01010413          	addi	s0,sp,16
    800077b0:	300027f3          	csrr	a5,mstatus
    800077b4:	ffffe737          	lui	a4,0xffffe
    800077b8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffc355f>
    800077bc:	00e7f7b3          	and	a5,a5,a4
    800077c0:	00001737          	lui	a4,0x1
    800077c4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800077c8:	00e7e7b3          	or	a5,a5,a4
    800077cc:	30079073          	csrw	mstatus,a5
    800077d0:	00000797          	auipc	a5,0x0
    800077d4:	16078793          	addi	a5,a5,352 # 80007930 <system_main>
    800077d8:	34179073          	csrw	mepc,a5
    800077dc:	00000793          	li	a5,0
    800077e0:	18079073          	csrw	satp,a5
    800077e4:	000107b7          	lui	a5,0x10
    800077e8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800077ec:	30279073          	csrw	medeleg,a5
    800077f0:	30379073          	csrw	mideleg,a5
    800077f4:	104027f3          	csrr	a5,sie
    800077f8:	2227e793          	ori	a5,a5,546
    800077fc:	10479073          	csrw	sie,a5
    80007800:	fff00793          	li	a5,-1
    80007804:	00a7d793          	srli	a5,a5,0xa
    80007808:	3b079073          	csrw	pmpaddr0,a5
    8000780c:	00f00793          	li	a5,15
    80007810:	3a079073          	csrw	pmpcfg0,a5
    80007814:	f14027f3          	csrr	a5,mhartid
    80007818:	0200c737          	lui	a4,0x200c
    8000781c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80007820:	0007869b          	sext.w	a3,a5
    80007824:	00269713          	slli	a4,a3,0x2
    80007828:	000f4637          	lui	a2,0xf4
    8000782c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80007830:	00d70733          	add	a4,a4,a3
    80007834:	0037979b          	slliw	a5,a5,0x3
    80007838:	020046b7          	lui	a3,0x2004
    8000783c:	00d787b3          	add	a5,a5,a3
    80007840:	00c585b3          	add	a1,a1,a2
    80007844:	00371693          	slli	a3,a4,0x3
    80007848:	00032717          	auipc	a4,0x32
    8000784c:	7f870713          	addi	a4,a4,2040 # 8003a040 <timer_scratch>
    80007850:	00b7b023          	sd	a1,0(a5)
    80007854:	00d70733          	add	a4,a4,a3
    80007858:	00f73c23          	sd	a5,24(a4)
    8000785c:	02c73023          	sd	a2,32(a4)
    80007860:	34071073          	csrw	mscratch,a4
    80007864:	00000797          	auipc	a5,0x0
    80007868:	6ec78793          	addi	a5,a5,1772 # 80007f50 <timervec>
    8000786c:	30579073          	csrw	mtvec,a5
    80007870:	300027f3          	csrr	a5,mstatus
    80007874:	0087e793          	ori	a5,a5,8
    80007878:	30079073          	csrw	mstatus,a5
    8000787c:	304027f3          	csrr	a5,mie
    80007880:	0807e793          	ori	a5,a5,128
    80007884:	30479073          	csrw	mie,a5
    80007888:	f14027f3          	csrr	a5,mhartid
    8000788c:	0007879b          	sext.w	a5,a5
    80007890:	00078213          	mv	tp,a5
    80007894:	30200073          	mret
    80007898:	00813403          	ld	s0,8(sp)
    8000789c:	01010113          	addi	sp,sp,16
    800078a0:	00008067          	ret

00000000800078a4 <timerinit>:
    800078a4:	ff010113          	addi	sp,sp,-16
    800078a8:	00813423          	sd	s0,8(sp)
    800078ac:	01010413          	addi	s0,sp,16
    800078b0:	f14027f3          	csrr	a5,mhartid
    800078b4:	0200c737          	lui	a4,0x200c
    800078b8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800078bc:	0007869b          	sext.w	a3,a5
    800078c0:	00269713          	slli	a4,a3,0x2
    800078c4:	000f4637          	lui	a2,0xf4
    800078c8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800078cc:	00d70733          	add	a4,a4,a3
    800078d0:	0037979b          	slliw	a5,a5,0x3
    800078d4:	020046b7          	lui	a3,0x2004
    800078d8:	00d787b3          	add	a5,a5,a3
    800078dc:	00c585b3          	add	a1,a1,a2
    800078e0:	00371693          	slli	a3,a4,0x3
    800078e4:	00032717          	auipc	a4,0x32
    800078e8:	75c70713          	addi	a4,a4,1884 # 8003a040 <timer_scratch>
    800078ec:	00b7b023          	sd	a1,0(a5)
    800078f0:	00d70733          	add	a4,a4,a3
    800078f4:	00f73c23          	sd	a5,24(a4)
    800078f8:	02c73023          	sd	a2,32(a4)
    800078fc:	34071073          	csrw	mscratch,a4
    80007900:	00000797          	auipc	a5,0x0
    80007904:	65078793          	addi	a5,a5,1616 # 80007f50 <timervec>
    80007908:	30579073          	csrw	mtvec,a5
    8000790c:	300027f3          	csrr	a5,mstatus
    80007910:	0087e793          	ori	a5,a5,8
    80007914:	30079073          	csrw	mstatus,a5
    80007918:	304027f3          	csrr	a5,mie
    8000791c:	0807e793          	ori	a5,a5,128
    80007920:	30479073          	csrw	mie,a5
    80007924:	00813403          	ld	s0,8(sp)
    80007928:	01010113          	addi	sp,sp,16
    8000792c:	00008067          	ret

0000000080007930 <system_main>:
    80007930:	fe010113          	addi	sp,sp,-32
    80007934:	00813823          	sd	s0,16(sp)
    80007938:	00913423          	sd	s1,8(sp)
    8000793c:	00113c23          	sd	ra,24(sp)
    80007940:	02010413          	addi	s0,sp,32
    80007944:	00000097          	auipc	ra,0x0
    80007948:	0c4080e7          	jalr	196(ra) # 80007a08 <cpuid>
    8000794c:	00006497          	auipc	s1,0x6
    80007950:	bb448493          	addi	s1,s1,-1100 # 8000d500 <started>
    80007954:	02050263          	beqz	a0,80007978 <system_main+0x48>
    80007958:	0004a783          	lw	a5,0(s1)
    8000795c:	0007879b          	sext.w	a5,a5
    80007960:	fe078ce3          	beqz	a5,80007958 <system_main+0x28>
    80007964:	0ff0000f          	fence
    80007968:	00003517          	auipc	a0,0x3
    8000796c:	cc850513          	addi	a0,a0,-824 # 8000a630 <CONSOLE_STATUS+0x620>
    80007970:	00001097          	auipc	ra,0x1
    80007974:	a7c080e7          	jalr	-1412(ra) # 800083ec <panic>
    80007978:	00001097          	auipc	ra,0x1
    8000797c:	9d0080e7          	jalr	-1584(ra) # 80008348 <consoleinit>
    80007980:	00001097          	auipc	ra,0x1
    80007984:	15c080e7          	jalr	348(ra) # 80008adc <printfinit>
    80007988:	00002517          	auipc	a0,0x2
    8000798c:	7f850513          	addi	a0,a0,2040 # 8000a180 <CONSOLE_STATUS+0x170>
    80007990:	00001097          	auipc	ra,0x1
    80007994:	ab8080e7          	jalr	-1352(ra) # 80008448 <__printf>
    80007998:	00003517          	auipc	a0,0x3
    8000799c:	c6850513          	addi	a0,a0,-920 # 8000a600 <CONSOLE_STATUS+0x5f0>
    800079a0:	00001097          	auipc	ra,0x1
    800079a4:	aa8080e7          	jalr	-1368(ra) # 80008448 <__printf>
    800079a8:	00002517          	auipc	a0,0x2
    800079ac:	7d850513          	addi	a0,a0,2008 # 8000a180 <CONSOLE_STATUS+0x170>
    800079b0:	00001097          	auipc	ra,0x1
    800079b4:	a98080e7          	jalr	-1384(ra) # 80008448 <__printf>
    800079b8:	00001097          	auipc	ra,0x1
    800079bc:	4b0080e7          	jalr	1200(ra) # 80008e68 <kinit>
    800079c0:	00000097          	auipc	ra,0x0
    800079c4:	148080e7          	jalr	328(ra) # 80007b08 <trapinit>
    800079c8:	00000097          	auipc	ra,0x0
    800079cc:	16c080e7          	jalr	364(ra) # 80007b34 <trapinithart>
    800079d0:	00000097          	auipc	ra,0x0
    800079d4:	5c0080e7          	jalr	1472(ra) # 80007f90 <plicinit>
    800079d8:	00000097          	auipc	ra,0x0
    800079dc:	5e0080e7          	jalr	1504(ra) # 80007fb8 <plicinithart>
    800079e0:	00000097          	auipc	ra,0x0
    800079e4:	078080e7          	jalr	120(ra) # 80007a58 <userinit>
    800079e8:	0ff0000f          	fence
    800079ec:	00100793          	li	a5,1
    800079f0:	00003517          	auipc	a0,0x3
    800079f4:	c2850513          	addi	a0,a0,-984 # 8000a618 <CONSOLE_STATUS+0x608>
    800079f8:	00f4a023          	sw	a5,0(s1)
    800079fc:	00001097          	auipc	ra,0x1
    80007a00:	a4c080e7          	jalr	-1460(ra) # 80008448 <__printf>
    80007a04:	0000006f          	j	80007a04 <system_main+0xd4>

0000000080007a08 <cpuid>:
    80007a08:	ff010113          	addi	sp,sp,-16
    80007a0c:	00813423          	sd	s0,8(sp)
    80007a10:	01010413          	addi	s0,sp,16
    80007a14:	00020513          	mv	a0,tp
    80007a18:	00813403          	ld	s0,8(sp)
    80007a1c:	0005051b          	sext.w	a0,a0
    80007a20:	01010113          	addi	sp,sp,16
    80007a24:	00008067          	ret

0000000080007a28 <mycpu>:
    80007a28:	ff010113          	addi	sp,sp,-16
    80007a2c:	00813423          	sd	s0,8(sp)
    80007a30:	01010413          	addi	s0,sp,16
    80007a34:	00020793          	mv	a5,tp
    80007a38:	00813403          	ld	s0,8(sp)
    80007a3c:	0007879b          	sext.w	a5,a5
    80007a40:	00779793          	slli	a5,a5,0x7
    80007a44:	00033517          	auipc	a0,0x33
    80007a48:	62c50513          	addi	a0,a0,1580 # 8003b070 <cpus>
    80007a4c:	00f50533          	add	a0,a0,a5
    80007a50:	01010113          	addi	sp,sp,16
    80007a54:	00008067          	ret

0000000080007a58 <userinit>:
    80007a58:	ff010113          	addi	sp,sp,-16
    80007a5c:	00813423          	sd	s0,8(sp)
    80007a60:	01010413          	addi	s0,sp,16
    80007a64:	00813403          	ld	s0,8(sp)
    80007a68:	01010113          	addi	sp,sp,16
    80007a6c:	ffffb317          	auipc	t1,0xffffb
    80007a70:	97430067          	jr	-1676(t1) # 800023e0 <main>

0000000080007a74 <either_copyout>:
    80007a74:	ff010113          	addi	sp,sp,-16
    80007a78:	00813023          	sd	s0,0(sp)
    80007a7c:	00113423          	sd	ra,8(sp)
    80007a80:	01010413          	addi	s0,sp,16
    80007a84:	02051663          	bnez	a0,80007ab0 <either_copyout+0x3c>
    80007a88:	00058513          	mv	a0,a1
    80007a8c:	00060593          	mv	a1,a2
    80007a90:	0006861b          	sext.w	a2,a3
    80007a94:	00002097          	auipc	ra,0x2
    80007a98:	c60080e7          	jalr	-928(ra) # 800096f4 <__memmove>
    80007a9c:	00813083          	ld	ra,8(sp)
    80007aa0:	00013403          	ld	s0,0(sp)
    80007aa4:	00000513          	li	a0,0
    80007aa8:	01010113          	addi	sp,sp,16
    80007aac:	00008067          	ret
    80007ab0:	00003517          	auipc	a0,0x3
    80007ab4:	ba850513          	addi	a0,a0,-1112 # 8000a658 <CONSOLE_STATUS+0x648>
    80007ab8:	00001097          	auipc	ra,0x1
    80007abc:	934080e7          	jalr	-1740(ra) # 800083ec <panic>

0000000080007ac0 <either_copyin>:
    80007ac0:	ff010113          	addi	sp,sp,-16
    80007ac4:	00813023          	sd	s0,0(sp)
    80007ac8:	00113423          	sd	ra,8(sp)
    80007acc:	01010413          	addi	s0,sp,16
    80007ad0:	02059463          	bnez	a1,80007af8 <either_copyin+0x38>
    80007ad4:	00060593          	mv	a1,a2
    80007ad8:	0006861b          	sext.w	a2,a3
    80007adc:	00002097          	auipc	ra,0x2
    80007ae0:	c18080e7          	jalr	-1000(ra) # 800096f4 <__memmove>
    80007ae4:	00813083          	ld	ra,8(sp)
    80007ae8:	00013403          	ld	s0,0(sp)
    80007aec:	00000513          	li	a0,0
    80007af0:	01010113          	addi	sp,sp,16
    80007af4:	00008067          	ret
    80007af8:	00003517          	auipc	a0,0x3
    80007afc:	b8850513          	addi	a0,a0,-1144 # 8000a680 <CONSOLE_STATUS+0x670>
    80007b00:	00001097          	auipc	ra,0x1
    80007b04:	8ec080e7          	jalr	-1812(ra) # 800083ec <panic>

0000000080007b08 <trapinit>:
    80007b08:	ff010113          	addi	sp,sp,-16
    80007b0c:	00813423          	sd	s0,8(sp)
    80007b10:	01010413          	addi	s0,sp,16
    80007b14:	00813403          	ld	s0,8(sp)
    80007b18:	00003597          	auipc	a1,0x3
    80007b1c:	b9058593          	addi	a1,a1,-1136 # 8000a6a8 <CONSOLE_STATUS+0x698>
    80007b20:	00033517          	auipc	a0,0x33
    80007b24:	5d050513          	addi	a0,a0,1488 # 8003b0f0 <tickslock>
    80007b28:	01010113          	addi	sp,sp,16
    80007b2c:	00001317          	auipc	t1,0x1
    80007b30:	5cc30067          	jr	1484(t1) # 800090f8 <initlock>

0000000080007b34 <trapinithart>:
    80007b34:	ff010113          	addi	sp,sp,-16
    80007b38:	00813423          	sd	s0,8(sp)
    80007b3c:	01010413          	addi	s0,sp,16
    80007b40:	00000797          	auipc	a5,0x0
    80007b44:	30078793          	addi	a5,a5,768 # 80007e40 <kernelvec>
    80007b48:	10579073          	csrw	stvec,a5
    80007b4c:	00813403          	ld	s0,8(sp)
    80007b50:	01010113          	addi	sp,sp,16
    80007b54:	00008067          	ret

0000000080007b58 <usertrap>:
    80007b58:	ff010113          	addi	sp,sp,-16
    80007b5c:	00813423          	sd	s0,8(sp)
    80007b60:	01010413          	addi	s0,sp,16
    80007b64:	00813403          	ld	s0,8(sp)
    80007b68:	01010113          	addi	sp,sp,16
    80007b6c:	00008067          	ret

0000000080007b70 <usertrapret>:
    80007b70:	ff010113          	addi	sp,sp,-16
    80007b74:	00813423          	sd	s0,8(sp)
    80007b78:	01010413          	addi	s0,sp,16
    80007b7c:	00813403          	ld	s0,8(sp)
    80007b80:	01010113          	addi	sp,sp,16
    80007b84:	00008067          	ret

0000000080007b88 <kerneltrap>:
    80007b88:	fe010113          	addi	sp,sp,-32
    80007b8c:	00813823          	sd	s0,16(sp)
    80007b90:	00113c23          	sd	ra,24(sp)
    80007b94:	00913423          	sd	s1,8(sp)
    80007b98:	02010413          	addi	s0,sp,32
    80007b9c:	142025f3          	csrr	a1,scause
    80007ba0:	100027f3          	csrr	a5,sstatus
    80007ba4:	0027f793          	andi	a5,a5,2
    80007ba8:	10079c63          	bnez	a5,80007cc0 <kerneltrap+0x138>
    80007bac:	142027f3          	csrr	a5,scause
    80007bb0:	0207ce63          	bltz	a5,80007bec <kerneltrap+0x64>
    80007bb4:	00003517          	auipc	a0,0x3
    80007bb8:	b3c50513          	addi	a0,a0,-1220 # 8000a6f0 <CONSOLE_STATUS+0x6e0>
    80007bbc:	00001097          	auipc	ra,0x1
    80007bc0:	88c080e7          	jalr	-1908(ra) # 80008448 <__printf>
    80007bc4:	141025f3          	csrr	a1,sepc
    80007bc8:	14302673          	csrr	a2,stval
    80007bcc:	00003517          	auipc	a0,0x3
    80007bd0:	b3450513          	addi	a0,a0,-1228 # 8000a700 <CONSOLE_STATUS+0x6f0>
    80007bd4:	00001097          	auipc	ra,0x1
    80007bd8:	874080e7          	jalr	-1932(ra) # 80008448 <__printf>
    80007bdc:	00003517          	auipc	a0,0x3
    80007be0:	b3c50513          	addi	a0,a0,-1220 # 8000a718 <CONSOLE_STATUS+0x708>
    80007be4:	00001097          	auipc	ra,0x1
    80007be8:	808080e7          	jalr	-2040(ra) # 800083ec <panic>
    80007bec:	0ff7f713          	andi	a4,a5,255
    80007bf0:	00900693          	li	a3,9
    80007bf4:	04d70063          	beq	a4,a3,80007c34 <kerneltrap+0xac>
    80007bf8:	fff00713          	li	a4,-1
    80007bfc:	03f71713          	slli	a4,a4,0x3f
    80007c00:	00170713          	addi	a4,a4,1
    80007c04:	fae798e3          	bne	a5,a4,80007bb4 <kerneltrap+0x2c>
    80007c08:	00000097          	auipc	ra,0x0
    80007c0c:	e00080e7          	jalr	-512(ra) # 80007a08 <cpuid>
    80007c10:	06050663          	beqz	a0,80007c7c <kerneltrap+0xf4>
    80007c14:	144027f3          	csrr	a5,sip
    80007c18:	ffd7f793          	andi	a5,a5,-3
    80007c1c:	14479073          	csrw	sip,a5
    80007c20:	01813083          	ld	ra,24(sp)
    80007c24:	01013403          	ld	s0,16(sp)
    80007c28:	00813483          	ld	s1,8(sp)
    80007c2c:	02010113          	addi	sp,sp,32
    80007c30:	00008067          	ret
    80007c34:	00000097          	auipc	ra,0x0
    80007c38:	3d0080e7          	jalr	976(ra) # 80008004 <plic_claim>
    80007c3c:	00a00793          	li	a5,10
    80007c40:	00050493          	mv	s1,a0
    80007c44:	06f50863          	beq	a0,a5,80007cb4 <kerneltrap+0x12c>
    80007c48:	fc050ce3          	beqz	a0,80007c20 <kerneltrap+0x98>
    80007c4c:	00050593          	mv	a1,a0
    80007c50:	00003517          	auipc	a0,0x3
    80007c54:	a8050513          	addi	a0,a0,-1408 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    80007c58:	00000097          	auipc	ra,0x0
    80007c5c:	7f0080e7          	jalr	2032(ra) # 80008448 <__printf>
    80007c60:	01013403          	ld	s0,16(sp)
    80007c64:	01813083          	ld	ra,24(sp)
    80007c68:	00048513          	mv	a0,s1
    80007c6c:	00813483          	ld	s1,8(sp)
    80007c70:	02010113          	addi	sp,sp,32
    80007c74:	00000317          	auipc	t1,0x0
    80007c78:	3c830067          	jr	968(t1) # 8000803c <plic_complete>
    80007c7c:	00033517          	auipc	a0,0x33
    80007c80:	47450513          	addi	a0,a0,1140 # 8003b0f0 <tickslock>
    80007c84:	00001097          	auipc	ra,0x1
    80007c88:	498080e7          	jalr	1176(ra) # 8000911c <acquire>
    80007c8c:	00006717          	auipc	a4,0x6
    80007c90:	87870713          	addi	a4,a4,-1928 # 8000d504 <ticks>
    80007c94:	00072783          	lw	a5,0(a4)
    80007c98:	00033517          	auipc	a0,0x33
    80007c9c:	45850513          	addi	a0,a0,1112 # 8003b0f0 <tickslock>
    80007ca0:	0017879b          	addiw	a5,a5,1
    80007ca4:	00f72023          	sw	a5,0(a4)
    80007ca8:	00001097          	auipc	ra,0x1
    80007cac:	540080e7          	jalr	1344(ra) # 800091e8 <release>
    80007cb0:	f65ff06f          	j	80007c14 <kerneltrap+0x8c>
    80007cb4:	00001097          	auipc	ra,0x1
    80007cb8:	09c080e7          	jalr	156(ra) # 80008d50 <uartintr>
    80007cbc:	fa5ff06f          	j	80007c60 <kerneltrap+0xd8>
    80007cc0:	00003517          	auipc	a0,0x3
    80007cc4:	9f050513          	addi	a0,a0,-1552 # 8000a6b0 <CONSOLE_STATUS+0x6a0>
    80007cc8:	00000097          	auipc	ra,0x0
    80007ccc:	724080e7          	jalr	1828(ra) # 800083ec <panic>

0000000080007cd0 <clockintr>:
    80007cd0:	fe010113          	addi	sp,sp,-32
    80007cd4:	00813823          	sd	s0,16(sp)
    80007cd8:	00913423          	sd	s1,8(sp)
    80007cdc:	00113c23          	sd	ra,24(sp)
    80007ce0:	02010413          	addi	s0,sp,32
    80007ce4:	00033497          	auipc	s1,0x33
    80007ce8:	40c48493          	addi	s1,s1,1036 # 8003b0f0 <tickslock>
    80007cec:	00048513          	mv	a0,s1
    80007cf0:	00001097          	auipc	ra,0x1
    80007cf4:	42c080e7          	jalr	1068(ra) # 8000911c <acquire>
    80007cf8:	00006717          	auipc	a4,0x6
    80007cfc:	80c70713          	addi	a4,a4,-2036 # 8000d504 <ticks>
    80007d00:	00072783          	lw	a5,0(a4)
    80007d04:	01013403          	ld	s0,16(sp)
    80007d08:	01813083          	ld	ra,24(sp)
    80007d0c:	00048513          	mv	a0,s1
    80007d10:	0017879b          	addiw	a5,a5,1
    80007d14:	00813483          	ld	s1,8(sp)
    80007d18:	00f72023          	sw	a5,0(a4)
    80007d1c:	02010113          	addi	sp,sp,32
    80007d20:	00001317          	auipc	t1,0x1
    80007d24:	4c830067          	jr	1224(t1) # 800091e8 <release>

0000000080007d28 <devintr>:
    80007d28:	142027f3          	csrr	a5,scause
    80007d2c:	00000513          	li	a0,0
    80007d30:	0007c463          	bltz	a5,80007d38 <devintr+0x10>
    80007d34:	00008067          	ret
    80007d38:	fe010113          	addi	sp,sp,-32
    80007d3c:	00813823          	sd	s0,16(sp)
    80007d40:	00113c23          	sd	ra,24(sp)
    80007d44:	00913423          	sd	s1,8(sp)
    80007d48:	02010413          	addi	s0,sp,32
    80007d4c:	0ff7f713          	andi	a4,a5,255
    80007d50:	00900693          	li	a3,9
    80007d54:	04d70c63          	beq	a4,a3,80007dac <devintr+0x84>
    80007d58:	fff00713          	li	a4,-1
    80007d5c:	03f71713          	slli	a4,a4,0x3f
    80007d60:	00170713          	addi	a4,a4,1
    80007d64:	00e78c63          	beq	a5,a4,80007d7c <devintr+0x54>
    80007d68:	01813083          	ld	ra,24(sp)
    80007d6c:	01013403          	ld	s0,16(sp)
    80007d70:	00813483          	ld	s1,8(sp)
    80007d74:	02010113          	addi	sp,sp,32
    80007d78:	00008067          	ret
    80007d7c:	00000097          	auipc	ra,0x0
    80007d80:	c8c080e7          	jalr	-884(ra) # 80007a08 <cpuid>
    80007d84:	06050663          	beqz	a0,80007df0 <devintr+0xc8>
    80007d88:	144027f3          	csrr	a5,sip
    80007d8c:	ffd7f793          	andi	a5,a5,-3
    80007d90:	14479073          	csrw	sip,a5
    80007d94:	01813083          	ld	ra,24(sp)
    80007d98:	01013403          	ld	s0,16(sp)
    80007d9c:	00813483          	ld	s1,8(sp)
    80007da0:	00200513          	li	a0,2
    80007da4:	02010113          	addi	sp,sp,32
    80007da8:	00008067          	ret
    80007dac:	00000097          	auipc	ra,0x0
    80007db0:	258080e7          	jalr	600(ra) # 80008004 <plic_claim>
    80007db4:	00a00793          	li	a5,10
    80007db8:	00050493          	mv	s1,a0
    80007dbc:	06f50663          	beq	a0,a5,80007e28 <devintr+0x100>
    80007dc0:	00100513          	li	a0,1
    80007dc4:	fa0482e3          	beqz	s1,80007d68 <devintr+0x40>
    80007dc8:	00048593          	mv	a1,s1
    80007dcc:	00003517          	auipc	a0,0x3
    80007dd0:	90450513          	addi	a0,a0,-1788 # 8000a6d0 <CONSOLE_STATUS+0x6c0>
    80007dd4:	00000097          	auipc	ra,0x0
    80007dd8:	674080e7          	jalr	1652(ra) # 80008448 <__printf>
    80007ddc:	00048513          	mv	a0,s1
    80007de0:	00000097          	auipc	ra,0x0
    80007de4:	25c080e7          	jalr	604(ra) # 8000803c <plic_complete>
    80007de8:	00100513          	li	a0,1
    80007dec:	f7dff06f          	j	80007d68 <devintr+0x40>
    80007df0:	00033517          	auipc	a0,0x33
    80007df4:	30050513          	addi	a0,a0,768 # 8003b0f0 <tickslock>
    80007df8:	00001097          	auipc	ra,0x1
    80007dfc:	324080e7          	jalr	804(ra) # 8000911c <acquire>
    80007e00:	00005717          	auipc	a4,0x5
    80007e04:	70470713          	addi	a4,a4,1796 # 8000d504 <ticks>
    80007e08:	00072783          	lw	a5,0(a4)
    80007e0c:	00033517          	auipc	a0,0x33
    80007e10:	2e450513          	addi	a0,a0,740 # 8003b0f0 <tickslock>
    80007e14:	0017879b          	addiw	a5,a5,1
    80007e18:	00f72023          	sw	a5,0(a4)
    80007e1c:	00001097          	auipc	ra,0x1
    80007e20:	3cc080e7          	jalr	972(ra) # 800091e8 <release>
    80007e24:	f65ff06f          	j	80007d88 <devintr+0x60>
    80007e28:	00001097          	auipc	ra,0x1
    80007e2c:	f28080e7          	jalr	-216(ra) # 80008d50 <uartintr>
    80007e30:	fadff06f          	j	80007ddc <devintr+0xb4>
	...

0000000080007e40 <kernelvec>:
    80007e40:	f0010113          	addi	sp,sp,-256
    80007e44:	00113023          	sd	ra,0(sp)
    80007e48:	00213423          	sd	sp,8(sp)
    80007e4c:	00313823          	sd	gp,16(sp)
    80007e50:	00413c23          	sd	tp,24(sp)
    80007e54:	02513023          	sd	t0,32(sp)
    80007e58:	02613423          	sd	t1,40(sp)
    80007e5c:	02713823          	sd	t2,48(sp)
    80007e60:	02813c23          	sd	s0,56(sp)
    80007e64:	04913023          	sd	s1,64(sp)
    80007e68:	04a13423          	sd	a0,72(sp)
    80007e6c:	04b13823          	sd	a1,80(sp)
    80007e70:	04c13c23          	sd	a2,88(sp)
    80007e74:	06d13023          	sd	a3,96(sp)
    80007e78:	06e13423          	sd	a4,104(sp)
    80007e7c:	06f13823          	sd	a5,112(sp)
    80007e80:	07013c23          	sd	a6,120(sp)
    80007e84:	09113023          	sd	a7,128(sp)
    80007e88:	09213423          	sd	s2,136(sp)
    80007e8c:	09313823          	sd	s3,144(sp)
    80007e90:	09413c23          	sd	s4,152(sp)
    80007e94:	0b513023          	sd	s5,160(sp)
    80007e98:	0b613423          	sd	s6,168(sp)
    80007e9c:	0b713823          	sd	s7,176(sp)
    80007ea0:	0b813c23          	sd	s8,184(sp)
    80007ea4:	0d913023          	sd	s9,192(sp)
    80007ea8:	0da13423          	sd	s10,200(sp)
    80007eac:	0db13823          	sd	s11,208(sp)
    80007eb0:	0dc13c23          	sd	t3,216(sp)
    80007eb4:	0fd13023          	sd	t4,224(sp)
    80007eb8:	0fe13423          	sd	t5,232(sp)
    80007ebc:	0ff13823          	sd	t6,240(sp)
    80007ec0:	cc9ff0ef          	jal	ra,80007b88 <kerneltrap>
    80007ec4:	00013083          	ld	ra,0(sp)
    80007ec8:	00813103          	ld	sp,8(sp)
    80007ecc:	01013183          	ld	gp,16(sp)
    80007ed0:	02013283          	ld	t0,32(sp)
    80007ed4:	02813303          	ld	t1,40(sp)
    80007ed8:	03013383          	ld	t2,48(sp)
    80007edc:	03813403          	ld	s0,56(sp)
    80007ee0:	04013483          	ld	s1,64(sp)
    80007ee4:	04813503          	ld	a0,72(sp)
    80007ee8:	05013583          	ld	a1,80(sp)
    80007eec:	05813603          	ld	a2,88(sp)
    80007ef0:	06013683          	ld	a3,96(sp)
    80007ef4:	06813703          	ld	a4,104(sp)
    80007ef8:	07013783          	ld	a5,112(sp)
    80007efc:	07813803          	ld	a6,120(sp)
    80007f00:	08013883          	ld	a7,128(sp)
    80007f04:	08813903          	ld	s2,136(sp)
    80007f08:	09013983          	ld	s3,144(sp)
    80007f0c:	09813a03          	ld	s4,152(sp)
    80007f10:	0a013a83          	ld	s5,160(sp)
    80007f14:	0a813b03          	ld	s6,168(sp)
    80007f18:	0b013b83          	ld	s7,176(sp)
    80007f1c:	0b813c03          	ld	s8,184(sp)
    80007f20:	0c013c83          	ld	s9,192(sp)
    80007f24:	0c813d03          	ld	s10,200(sp)
    80007f28:	0d013d83          	ld	s11,208(sp)
    80007f2c:	0d813e03          	ld	t3,216(sp)
    80007f30:	0e013e83          	ld	t4,224(sp)
    80007f34:	0e813f03          	ld	t5,232(sp)
    80007f38:	0f013f83          	ld	t6,240(sp)
    80007f3c:	10010113          	addi	sp,sp,256
    80007f40:	10200073          	sret
    80007f44:	00000013          	nop
    80007f48:	00000013          	nop
    80007f4c:	00000013          	nop

0000000080007f50 <timervec>:
    80007f50:	34051573          	csrrw	a0,mscratch,a0
    80007f54:	00b53023          	sd	a1,0(a0)
    80007f58:	00c53423          	sd	a2,8(a0)
    80007f5c:	00d53823          	sd	a3,16(a0)
    80007f60:	01853583          	ld	a1,24(a0)
    80007f64:	02053603          	ld	a2,32(a0)
    80007f68:	0005b683          	ld	a3,0(a1)
    80007f6c:	00c686b3          	add	a3,a3,a2
    80007f70:	00d5b023          	sd	a3,0(a1)
    80007f74:	00200593          	li	a1,2
    80007f78:	14459073          	csrw	sip,a1
    80007f7c:	01053683          	ld	a3,16(a0)
    80007f80:	00853603          	ld	a2,8(a0)
    80007f84:	00053583          	ld	a1,0(a0)
    80007f88:	34051573          	csrrw	a0,mscratch,a0
    80007f8c:	30200073          	mret

0000000080007f90 <plicinit>:
    80007f90:	ff010113          	addi	sp,sp,-16
    80007f94:	00813423          	sd	s0,8(sp)
    80007f98:	01010413          	addi	s0,sp,16
    80007f9c:	00813403          	ld	s0,8(sp)
    80007fa0:	0c0007b7          	lui	a5,0xc000
    80007fa4:	00100713          	li	a4,1
    80007fa8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80007fac:	00e7a223          	sw	a4,4(a5)
    80007fb0:	01010113          	addi	sp,sp,16
    80007fb4:	00008067          	ret

0000000080007fb8 <plicinithart>:
    80007fb8:	ff010113          	addi	sp,sp,-16
    80007fbc:	00813023          	sd	s0,0(sp)
    80007fc0:	00113423          	sd	ra,8(sp)
    80007fc4:	01010413          	addi	s0,sp,16
    80007fc8:	00000097          	auipc	ra,0x0
    80007fcc:	a40080e7          	jalr	-1472(ra) # 80007a08 <cpuid>
    80007fd0:	0085171b          	slliw	a4,a0,0x8
    80007fd4:	0c0027b7          	lui	a5,0xc002
    80007fd8:	00e787b3          	add	a5,a5,a4
    80007fdc:	40200713          	li	a4,1026
    80007fe0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80007fe4:	00813083          	ld	ra,8(sp)
    80007fe8:	00013403          	ld	s0,0(sp)
    80007fec:	00d5151b          	slliw	a0,a0,0xd
    80007ff0:	0c2017b7          	lui	a5,0xc201
    80007ff4:	00a78533          	add	a0,a5,a0
    80007ff8:	00052023          	sw	zero,0(a0)
    80007ffc:	01010113          	addi	sp,sp,16
    80008000:	00008067          	ret

0000000080008004 <plic_claim>:
    80008004:	ff010113          	addi	sp,sp,-16
    80008008:	00813023          	sd	s0,0(sp)
    8000800c:	00113423          	sd	ra,8(sp)
    80008010:	01010413          	addi	s0,sp,16
    80008014:	00000097          	auipc	ra,0x0
    80008018:	9f4080e7          	jalr	-1548(ra) # 80007a08 <cpuid>
    8000801c:	00813083          	ld	ra,8(sp)
    80008020:	00013403          	ld	s0,0(sp)
    80008024:	00d5151b          	slliw	a0,a0,0xd
    80008028:	0c2017b7          	lui	a5,0xc201
    8000802c:	00a78533          	add	a0,a5,a0
    80008030:	00452503          	lw	a0,4(a0)
    80008034:	01010113          	addi	sp,sp,16
    80008038:	00008067          	ret

000000008000803c <plic_complete>:
    8000803c:	fe010113          	addi	sp,sp,-32
    80008040:	00813823          	sd	s0,16(sp)
    80008044:	00913423          	sd	s1,8(sp)
    80008048:	00113c23          	sd	ra,24(sp)
    8000804c:	02010413          	addi	s0,sp,32
    80008050:	00050493          	mv	s1,a0
    80008054:	00000097          	auipc	ra,0x0
    80008058:	9b4080e7          	jalr	-1612(ra) # 80007a08 <cpuid>
    8000805c:	01813083          	ld	ra,24(sp)
    80008060:	01013403          	ld	s0,16(sp)
    80008064:	00d5179b          	slliw	a5,a0,0xd
    80008068:	0c201737          	lui	a4,0xc201
    8000806c:	00f707b3          	add	a5,a4,a5
    80008070:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80008074:	00813483          	ld	s1,8(sp)
    80008078:	02010113          	addi	sp,sp,32
    8000807c:	00008067          	ret

0000000080008080 <consolewrite>:
    80008080:	fb010113          	addi	sp,sp,-80
    80008084:	04813023          	sd	s0,64(sp)
    80008088:	04113423          	sd	ra,72(sp)
    8000808c:	02913c23          	sd	s1,56(sp)
    80008090:	03213823          	sd	s2,48(sp)
    80008094:	03313423          	sd	s3,40(sp)
    80008098:	03413023          	sd	s4,32(sp)
    8000809c:	01513c23          	sd	s5,24(sp)
    800080a0:	05010413          	addi	s0,sp,80
    800080a4:	06c05c63          	blez	a2,8000811c <consolewrite+0x9c>
    800080a8:	00060993          	mv	s3,a2
    800080ac:	00050a13          	mv	s4,a0
    800080b0:	00058493          	mv	s1,a1
    800080b4:	00000913          	li	s2,0
    800080b8:	fff00a93          	li	s5,-1
    800080bc:	01c0006f          	j	800080d8 <consolewrite+0x58>
    800080c0:	fbf44503          	lbu	a0,-65(s0)
    800080c4:	0019091b          	addiw	s2,s2,1
    800080c8:	00148493          	addi	s1,s1,1
    800080cc:	00001097          	auipc	ra,0x1
    800080d0:	a9c080e7          	jalr	-1380(ra) # 80008b68 <uartputc>
    800080d4:	03298063          	beq	s3,s2,800080f4 <consolewrite+0x74>
    800080d8:	00048613          	mv	a2,s1
    800080dc:	00100693          	li	a3,1
    800080e0:	000a0593          	mv	a1,s4
    800080e4:	fbf40513          	addi	a0,s0,-65
    800080e8:	00000097          	auipc	ra,0x0
    800080ec:	9d8080e7          	jalr	-1576(ra) # 80007ac0 <either_copyin>
    800080f0:	fd5518e3          	bne	a0,s5,800080c0 <consolewrite+0x40>
    800080f4:	04813083          	ld	ra,72(sp)
    800080f8:	04013403          	ld	s0,64(sp)
    800080fc:	03813483          	ld	s1,56(sp)
    80008100:	02813983          	ld	s3,40(sp)
    80008104:	02013a03          	ld	s4,32(sp)
    80008108:	01813a83          	ld	s5,24(sp)
    8000810c:	00090513          	mv	a0,s2
    80008110:	03013903          	ld	s2,48(sp)
    80008114:	05010113          	addi	sp,sp,80
    80008118:	00008067          	ret
    8000811c:	00000913          	li	s2,0
    80008120:	fd5ff06f          	j	800080f4 <consolewrite+0x74>

0000000080008124 <consoleread>:
    80008124:	f9010113          	addi	sp,sp,-112
    80008128:	06813023          	sd	s0,96(sp)
    8000812c:	04913c23          	sd	s1,88(sp)
    80008130:	05213823          	sd	s2,80(sp)
    80008134:	05313423          	sd	s3,72(sp)
    80008138:	05413023          	sd	s4,64(sp)
    8000813c:	03513c23          	sd	s5,56(sp)
    80008140:	03613823          	sd	s6,48(sp)
    80008144:	03713423          	sd	s7,40(sp)
    80008148:	03813023          	sd	s8,32(sp)
    8000814c:	06113423          	sd	ra,104(sp)
    80008150:	01913c23          	sd	s9,24(sp)
    80008154:	07010413          	addi	s0,sp,112
    80008158:	00060b93          	mv	s7,a2
    8000815c:	00050913          	mv	s2,a0
    80008160:	00058c13          	mv	s8,a1
    80008164:	00060b1b          	sext.w	s6,a2
    80008168:	00033497          	auipc	s1,0x33
    8000816c:	fb048493          	addi	s1,s1,-80 # 8003b118 <cons>
    80008170:	00400993          	li	s3,4
    80008174:	fff00a13          	li	s4,-1
    80008178:	00a00a93          	li	s5,10
    8000817c:	05705e63          	blez	s7,800081d8 <consoleread+0xb4>
    80008180:	09c4a703          	lw	a4,156(s1)
    80008184:	0984a783          	lw	a5,152(s1)
    80008188:	0007071b          	sext.w	a4,a4
    8000818c:	08e78463          	beq	a5,a4,80008214 <consoleread+0xf0>
    80008190:	07f7f713          	andi	a4,a5,127
    80008194:	00e48733          	add	a4,s1,a4
    80008198:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000819c:	0017869b          	addiw	a3,a5,1
    800081a0:	08d4ac23          	sw	a3,152(s1)
    800081a4:	00070c9b          	sext.w	s9,a4
    800081a8:	0b370663          	beq	a4,s3,80008254 <consoleread+0x130>
    800081ac:	00100693          	li	a3,1
    800081b0:	f9f40613          	addi	a2,s0,-97
    800081b4:	000c0593          	mv	a1,s8
    800081b8:	00090513          	mv	a0,s2
    800081bc:	f8e40fa3          	sb	a4,-97(s0)
    800081c0:	00000097          	auipc	ra,0x0
    800081c4:	8b4080e7          	jalr	-1868(ra) # 80007a74 <either_copyout>
    800081c8:	01450863          	beq	a0,s4,800081d8 <consoleread+0xb4>
    800081cc:	001c0c13          	addi	s8,s8,1
    800081d0:	fffb8b9b          	addiw	s7,s7,-1
    800081d4:	fb5c94e3          	bne	s9,s5,8000817c <consoleread+0x58>
    800081d8:	000b851b          	sext.w	a0,s7
    800081dc:	06813083          	ld	ra,104(sp)
    800081e0:	06013403          	ld	s0,96(sp)
    800081e4:	05813483          	ld	s1,88(sp)
    800081e8:	05013903          	ld	s2,80(sp)
    800081ec:	04813983          	ld	s3,72(sp)
    800081f0:	04013a03          	ld	s4,64(sp)
    800081f4:	03813a83          	ld	s5,56(sp)
    800081f8:	02813b83          	ld	s7,40(sp)
    800081fc:	02013c03          	ld	s8,32(sp)
    80008200:	01813c83          	ld	s9,24(sp)
    80008204:	40ab053b          	subw	a0,s6,a0
    80008208:	03013b03          	ld	s6,48(sp)
    8000820c:	07010113          	addi	sp,sp,112
    80008210:	00008067          	ret
    80008214:	00001097          	auipc	ra,0x1
    80008218:	1d8080e7          	jalr	472(ra) # 800093ec <push_on>
    8000821c:	0984a703          	lw	a4,152(s1)
    80008220:	09c4a783          	lw	a5,156(s1)
    80008224:	0007879b          	sext.w	a5,a5
    80008228:	fef70ce3          	beq	a4,a5,80008220 <consoleread+0xfc>
    8000822c:	00001097          	auipc	ra,0x1
    80008230:	234080e7          	jalr	564(ra) # 80009460 <pop_on>
    80008234:	0984a783          	lw	a5,152(s1)
    80008238:	07f7f713          	andi	a4,a5,127
    8000823c:	00e48733          	add	a4,s1,a4
    80008240:	01874703          	lbu	a4,24(a4)
    80008244:	0017869b          	addiw	a3,a5,1
    80008248:	08d4ac23          	sw	a3,152(s1)
    8000824c:	00070c9b          	sext.w	s9,a4
    80008250:	f5371ee3          	bne	a4,s3,800081ac <consoleread+0x88>
    80008254:	000b851b          	sext.w	a0,s7
    80008258:	f96bf2e3          	bgeu	s7,s6,800081dc <consoleread+0xb8>
    8000825c:	08f4ac23          	sw	a5,152(s1)
    80008260:	f7dff06f          	j	800081dc <consoleread+0xb8>

0000000080008264 <consputc>:
    80008264:	10000793          	li	a5,256
    80008268:	00f50663          	beq	a0,a5,80008274 <consputc+0x10>
    8000826c:	00001317          	auipc	t1,0x1
    80008270:	9f430067          	jr	-1548(t1) # 80008c60 <uartputc_sync>
    80008274:	ff010113          	addi	sp,sp,-16
    80008278:	00113423          	sd	ra,8(sp)
    8000827c:	00813023          	sd	s0,0(sp)
    80008280:	01010413          	addi	s0,sp,16
    80008284:	00800513          	li	a0,8
    80008288:	00001097          	auipc	ra,0x1
    8000828c:	9d8080e7          	jalr	-1576(ra) # 80008c60 <uartputc_sync>
    80008290:	02000513          	li	a0,32
    80008294:	00001097          	auipc	ra,0x1
    80008298:	9cc080e7          	jalr	-1588(ra) # 80008c60 <uartputc_sync>
    8000829c:	00013403          	ld	s0,0(sp)
    800082a0:	00813083          	ld	ra,8(sp)
    800082a4:	00800513          	li	a0,8
    800082a8:	01010113          	addi	sp,sp,16
    800082ac:	00001317          	auipc	t1,0x1
    800082b0:	9b430067          	jr	-1612(t1) # 80008c60 <uartputc_sync>

00000000800082b4 <consoleintr>:
    800082b4:	fe010113          	addi	sp,sp,-32
    800082b8:	00813823          	sd	s0,16(sp)
    800082bc:	00913423          	sd	s1,8(sp)
    800082c0:	01213023          	sd	s2,0(sp)
    800082c4:	00113c23          	sd	ra,24(sp)
    800082c8:	02010413          	addi	s0,sp,32
    800082cc:	00033917          	auipc	s2,0x33
    800082d0:	e4c90913          	addi	s2,s2,-436 # 8003b118 <cons>
    800082d4:	00050493          	mv	s1,a0
    800082d8:	00090513          	mv	a0,s2
    800082dc:	00001097          	auipc	ra,0x1
    800082e0:	e40080e7          	jalr	-448(ra) # 8000911c <acquire>
    800082e4:	02048c63          	beqz	s1,8000831c <consoleintr+0x68>
    800082e8:	0a092783          	lw	a5,160(s2)
    800082ec:	09892703          	lw	a4,152(s2)
    800082f0:	07f00693          	li	a3,127
    800082f4:	40e7873b          	subw	a4,a5,a4
    800082f8:	02e6e263          	bltu	a3,a4,8000831c <consoleintr+0x68>
    800082fc:	00d00713          	li	a4,13
    80008300:	04e48063          	beq	s1,a4,80008340 <consoleintr+0x8c>
    80008304:	07f7f713          	andi	a4,a5,127
    80008308:	00e90733          	add	a4,s2,a4
    8000830c:	0017879b          	addiw	a5,a5,1
    80008310:	0af92023          	sw	a5,160(s2)
    80008314:	00970c23          	sb	s1,24(a4)
    80008318:	08f92e23          	sw	a5,156(s2)
    8000831c:	01013403          	ld	s0,16(sp)
    80008320:	01813083          	ld	ra,24(sp)
    80008324:	00813483          	ld	s1,8(sp)
    80008328:	00013903          	ld	s2,0(sp)
    8000832c:	00033517          	auipc	a0,0x33
    80008330:	dec50513          	addi	a0,a0,-532 # 8003b118 <cons>
    80008334:	02010113          	addi	sp,sp,32
    80008338:	00001317          	auipc	t1,0x1
    8000833c:	eb030067          	jr	-336(t1) # 800091e8 <release>
    80008340:	00a00493          	li	s1,10
    80008344:	fc1ff06f          	j	80008304 <consoleintr+0x50>

0000000080008348 <consoleinit>:
    80008348:	fe010113          	addi	sp,sp,-32
    8000834c:	00113c23          	sd	ra,24(sp)
    80008350:	00813823          	sd	s0,16(sp)
    80008354:	00913423          	sd	s1,8(sp)
    80008358:	02010413          	addi	s0,sp,32
    8000835c:	00033497          	auipc	s1,0x33
    80008360:	dbc48493          	addi	s1,s1,-580 # 8003b118 <cons>
    80008364:	00048513          	mv	a0,s1
    80008368:	00002597          	auipc	a1,0x2
    8000836c:	3c058593          	addi	a1,a1,960 # 8000a728 <CONSOLE_STATUS+0x718>
    80008370:	00001097          	auipc	ra,0x1
    80008374:	d88080e7          	jalr	-632(ra) # 800090f8 <initlock>
    80008378:	00000097          	auipc	ra,0x0
    8000837c:	7ac080e7          	jalr	1964(ra) # 80008b24 <uartinit>
    80008380:	01813083          	ld	ra,24(sp)
    80008384:	01013403          	ld	s0,16(sp)
    80008388:	00000797          	auipc	a5,0x0
    8000838c:	d9c78793          	addi	a5,a5,-612 # 80008124 <consoleread>
    80008390:	0af4bc23          	sd	a5,184(s1)
    80008394:	00000797          	auipc	a5,0x0
    80008398:	cec78793          	addi	a5,a5,-788 # 80008080 <consolewrite>
    8000839c:	0cf4b023          	sd	a5,192(s1)
    800083a0:	00813483          	ld	s1,8(sp)
    800083a4:	02010113          	addi	sp,sp,32
    800083a8:	00008067          	ret

00000000800083ac <console_read>:
    800083ac:	ff010113          	addi	sp,sp,-16
    800083b0:	00813423          	sd	s0,8(sp)
    800083b4:	01010413          	addi	s0,sp,16
    800083b8:	00813403          	ld	s0,8(sp)
    800083bc:	00033317          	auipc	t1,0x33
    800083c0:	e1433303          	ld	t1,-492(t1) # 8003b1d0 <devsw+0x10>
    800083c4:	01010113          	addi	sp,sp,16
    800083c8:	00030067          	jr	t1

00000000800083cc <console_write>:
    800083cc:	ff010113          	addi	sp,sp,-16
    800083d0:	00813423          	sd	s0,8(sp)
    800083d4:	01010413          	addi	s0,sp,16
    800083d8:	00813403          	ld	s0,8(sp)
    800083dc:	00033317          	auipc	t1,0x33
    800083e0:	dfc33303          	ld	t1,-516(t1) # 8003b1d8 <devsw+0x18>
    800083e4:	01010113          	addi	sp,sp,16
    800083e8:	00030067          	jr	t1

00000000800083ec <panic>:
    800083ec:	fe010113          	addi	sp,sp,-32
    800083f0:	00113c23          	sd	ra,24(sp)
    800083f4:	00813823          	sd	s0,16(sp)
    800083f8:	00913423          	sd	s1,8(sp)
    800083fc:	02010413          	addi	s0,sp,32
    80008400:	00050493          	mv	s1,a0
    80008404:	00002517          	auipc	a0,0x2
    80008408:	32c50513          	addi	a0,a0,812 # 8000a730 <CONSOLE_STATUS+0x720>
    8000840c:	00033797          	auipc	a5,0x33
    80008410:	e607a623          	sw	zero,-404(a5) # 8003b278 <pr+0x18>
    80008414:	00000097          	auipc	ra,0x0
    80008418:	034080e7          	jalr	52(ra) # 80008448 <__printf>
    8000841c:	00048513          	mv	a0,s1
    80008420:	00000097          	auipc	ra,0x0
    80008424:	028080e7          	jalr	40(ra) # 80008448 <__printf>
    80008428:	00002517          	auipc	a0,0x2
    8000842c:	d5850513          	addi	a0,a0,-680 # 8000a180 <CONSOLE_STATUS+0x170>
    80008430:	00000097          	auipc	ra,0x0
    80008434:	018080e7          	jalr	24(ra) # 80008448 <__printf>
    80008438:	00100793          	li	a5,1
    8000843c:	00005717          	auipc	a4,0x5
    80008440:	0cf72623          	sw	a5,204(a4) # 8000d508 <panicked>
    80008444:	0000006f          	j	80008444 <panic+0x58>

0000000080008448 <__printf>:
    80008448:	f3010113          	addi	sp,sp,-208
    8000844c:	08813023          	sd	s0,128(sp)
    80008450:	07313423          	sd	s3,104(sp)
    80008454:	09010413          	addi	s0,sp,144
    80008458:	05813023          	sd	s8,64(sp)
    8000845c:	08113423          	sd	ra,136(sp)
    80008460:	06913c23          	sd	s1,120(sp)
    80008464:	07213823          	sd	s2,112(sp)
    80008468:	07413023          	sd	s4,96(sp)
    8000846c:	05513c23          	sd	s5,88(sp)
    80008470:	05613823          	sd	s6,80(sp)
    80008474:	05713423          	sd	s7,72(sp)
    80008478:	03913c23          	sd	s9,56(sp)
    8000847c:	03a13823          	sd	s10,48(sp)
    80008480:	03b13423          	sd	s11,40(sp)
    80008484:	00033317          	auipc	t1,0x33
    80008488:	ddc30313          	addi	t1,t1,-548 # 8003b260 <pr>
    8000848c:	01832c03          	lw	s8,24(t1)
    80008490:	00b43423          	sd	a1,8(s0)
    80008494:	00c43823          	sd	a2,16(s0)
    80008498:	00d43c23          	sd	a3,24(s0)
    8000849c:	02e43023          	sd	a4,32(s0)
    800084a0:	02f43423          	sd	a5,40(s0)
    800084a4:	03043823          	sd	a6,48(s0)
    800084a8:	03143c23          	sd	a7,56(s0)
    800084ac:	00050993          	mv	s3,a0
    800084b0:	4a0c1663          	bnez	s8,8000895c <__printf+0x514>
    800084b4:	60098c63          	beqz	s3,80008acc <__printf+0x684>
    800084b8:	0009c503          	lbu	a0,0(s3)
    800084bc:	00840793          	addi	a5,s0,8
    800084c0:	f6f43c23          	sd	a5,-136(s0)
    800084c4:	00000493          	li	s1,0
    800084c8:	22050063          	beqz	a0,800086e8 <__printf+0x2a0>
    800084cc:	00002a37          	lui	s4,0x2
    800084d0:	00018ab7          	lui	s5,0x18
    800084d4:	000f4b37          	lui	s6,0xf4
    800084d8:	00989bb7          	lui	s7,0x989
    800084dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800084e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800084e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800084e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800084ec:	00148c9b          	addiw	s9,s1,1
    800084f0:	02500793          	li	a5,37
    800084f4:	01998933          	add	s2,s3,s9
    800084f8:	38f51263          	bne	a0,a5,8000887c <__printf+0x434>
    800084fc:	00094783          	lbu	a5,0(s2)
    80008500:	00078c9b          	sext.w	s9,a5
    80008504:	1e078263          	beqz	a5,800086e8 <__printf+0x2a0>
    80008508:	0024849b          	addiw	s1,s1,2
    8000850c:	07000713          	li	a4,112
    80008510:	00998933          	add	s2,s3,s1
    80008514:	38e78a63          	beq	a5,a4,800088a8 <__printf+0x460>
    80008518:	20f76863          	bltu	a4,a5,80008728 <__printf+0x2e0>
    8000851c:	42a78863          	beq	a5,a0,8000894c <__printf+0x504>
    80008520:	06400713          	li	a4,100
    80008524:	40e79663          	bne	a5,a4,80008930 <__printf+0x4e8>
    80008528:	f7843783          	ld	a5,-136(s0)
    8000852c:	0007a603          	lw	a2,0(a5)
    80008530:	00878793          	addi	a5,a5,8
    80008534:	f6f43c23          	sd	a5,-136(s0)
    80008538:	42064a63          	bltz	a2,8000896c <__printf+0x524>
    8000853c:	00a00713          	li	a4,10
    80008540:	02e677bb          	remuw	a5,a2,a4
    80008544:	00002d97          	auipc	s11,0x2
    80008548:	214d8d93          	addi	s11,s11,532 # 8000a758 <digits>
    8000854c:	00900593          	li	a1,9
    80008550:	0006051b          	sext.w	a0,a2
    80008554:	00000c93          	li	s9,0
    80008558:	02079793          	slli	a5,a5,0x20
    8000855c:	0207d793          	srli	a5,a5,0x20
    80008560:	00fd87b3          	add	a5,s11,a5
    80008564:	0007c783          	lbu	a5,0(a5)
    80008568:	02e656bb          	divuw	a3,a2,a4
    8000856c:	f8f40023          	sb	a5,-128(s0)
    80008570:	14c5d863          	bge	a1,a2,800086c0 <__printf+0x278>
    80008574:	06300593          	li	a1,99
    80008578:	00100c93          	li	s9,1
    8000857c:	02e6f7bb          	remuw	a5,a3,a4
    80008580:	02079793          	slli	a5,a5,0x20
    80008584:	0207d793          	srli	a5,a5,0x20
    80008588:	00fd87b3          	add	a5,s11,a5
    8000858c:	0007c783          	lbu	a5,0(a5)
    80008590:	02e6d73b          	divuw	a4,a3,a4
    80008594:	f8f400a3          	sb	a5,-127(s0)
    80008598:	12a5f463          	bgeu	a1,a0,800086c0 <__printf+0x278>
    8000859c:	00a00693          	li	a3,10
    800085a0:	00900593          	li	a1,9
    800085a4:	02d777bb          	remuw	a5,a4,a3
    800085a8:	02079793          	slli	a5,a5,0x20
    800085ac:	0207d793          	srli	a5,a5,0x20
    800085b0:	00fd87b3          	add	a5,s11,a5
    800085b4:	0007c503          	lbu	a0,0(a5)
    800085b8:	02d757bb          	divuw	a5,a4,a3
    800085bc:	f8a40123          	sb	a0,-126(s0)
    800085c0:	48e5f263          	bgeu	a1,a4,80008a44 <__printf+0x5fc>
    800085c4:	06300513          	li	a0,99
    800085c8:	02d7f5bb          	remuw	a1,a5,a3
    800085cc:	02059593          	slli	a1,a1,0x20
    800085d0:	0205d593          	srli	a1,a1,0x20
    800085d4:	00bd85b3          	add	a1,s11,a1
    800085d8:	0005c583          	lbu	a1,0(a1)
    800085dc:	02d7d7bb          	divuw	a5,a5,a3
    800085e0:	f8b401a3          	sb	a1,-125(s0)
    800085e4:	48e57263          	bgeu	a0,a4,80008a68 <__printf+0x620>
    800085e8:	3e700513          	li	a0,999
    800085ec:	02d7f5bb          	remuw	a1,a5,a3
    800085f0:	02059593          	slli	a1,a1,0x20
    800085f4:	0205d593          	srli	a1,a1,0x20
    800085f8:	00bd85b3          	add	a1,s11,a1
    800085fc:	0005c583          	lbu	a1,0(a1)
    80008600:	02d7d7bb          	divuw	a5,a5,a3
    80008604:	f8b40223          	sb	a1,-124(s0)
    80008608:	46e57663          	bgeu	a0,a4,80008a74 <__printf+0x62c>
    8000860c:	02d7f5bb          	remuw	a1,a5,a3
    80008610:	02059593          	slli	a1,a1,0x20
    80008614:	0205d593          	srli	a1,a1,0x20
    80008618:	00bd85b3          	add	a1,s11,a1
    8000861c:	0005c583          	lbu	a1,0(a1)
    80008620:	02d7d7bb          	divuw	a5,a5,a3
    80008624:	f8b402a3          	sb	a1,-123(s0)
    80008628:	46ea7863          	bgeu	s4,a4,80008a98 <__printf+0x650>
    8000862c:	02d7f5bb          	remuw	a1,a5,a3
    80008630:	02059593          	slli	a1,a1,0x20
    80008634:	0205d593          	srli	a1,a1,0x20
    80008638:	00bd85b3          	add	a1,s11,a1
    8000863c:	0005c583          	lbu	a1,0(a1)
    80008640:	02d7d7bb          	divuw	a5,a5,a3
    80008644:	f8b40323          	sb	a1,-122(s0)
    80008648:	3eeaf863          	bgeu	s5,a4,80008a38 <__printf+0x5f0>
    8000864c:	02d7f5bb          	remuw	a1,a5,a3
    80008650:	02059593          	slli	a1,a1,0x20
    80008654:	0205d593          	srli	a1,a1,0x20
    80008658:	00bd85b3          	add	a1,s11,a1
    8000865c:	0005c583          	lbu	a1,0(a1)
    80008660:	02d7d7bb          	divuw	a5,a5,a3
    80008664:	f8b403a3          	sb	a1,-121(s0)
    80008668:	42eb7e63          	bgeu	s6,a4,80008aa4 <__printf+0x65c>
    8000866c:	02d7f5bb          	remuw	a1,a5,a3
    80008670:	02059593          	slli	a1,a1,0x20
    80008674:	0205d593          	srli	a1,a1,0x20
    80008678:	00bd85b3          	add	a1,s11,a1
    8000867c:	0005c583          	lbu	a1,0(a1)
    80008680:	02d7d7bb          	divuw	a5,a5,a3
    80008684:	f8b40423          	sb	a1,-120(s0)
    80008688:	42ebfc63          	bgeu	s7,a4,80008ac0 <__printf+0x678>
    8000868c:	02079793          	slli	a5,a5,0x20
    80008690:	0207d793          	srli	a5,a5,0x20
    80008694:	00fd8db3          	add	s11,s11,a5
    80008698:	000dc703          	lbu	a4,0(s11)
    8000869c:	00a00793          	li	a5,10
    800086a0:	00900c93          	li	s9,9
    800086a4:	f8e404a3          	sb	a4,-119(s0)
    800086a8:	00065c63          	bgez	a2,800086c0 <__printf+0x278>
    800086ac:	f9040713          	addi	a4,s0,-112
    800086b0:	00f70733          	add	a4,a4,a5
    800086b4:	02d00693          	li	a3,45
    800086b8:	fed70823          	sb	a3,-16(a4)
    800086bc:	00078c93          	mv	s9,a5
    800086c0:	f8040793          	addi	a5,s0,-128
    800086c4:	01978cb3          	add	s9,a5,s9
    800086c8:	f7f40d13          	addi	s10,s0,-129
    800086cc:	000cc503          	lbu	a0,0(s9)
    800086d0:	fffc8c93          	addi	s9,s9,-1
    800086d4:	00000097          	auipc	ra,0x0
    800086d8:	b90080e7          	jalr	-1136(ra) # 80008264 <consputc>
    800086dc:	ffac98e3          	bne	s9,s10,800086cc <__printf+0x284>
    800086e0:	00094503          	lbu	a0,0(s2)
    800086e4:	e00514e3          	bnez	a0,800084ec <__printf+0xa4>
    800086e8:	1a0c1663          	bnez	s8,80008894 <__printf+0x44c>
    800086ec:	08813083          	ld	ra,136(sp)
    800086f0:	08013403          	ld	s0,128(sp)
    800086f4:	07813483          	ld	s1,120(sp)
    800086f8:	07013903          	ld	s2,112(sp)
    800086fc:	06813983          	ld	s3,104(sp)
    80008700:	06013a03          	ld	s4,96(sp)
    80008704:	05813a83          	ld	s5,88(sp)
    80008708:	05013b03          	ld	s6,80(sp)
    8000870c:	04813b83          	ld	s7,72(sp)
    80008710:	04013c03          	ld	s8,64(sp)
    80008714:	03813c83          	ld	s9,56(sp)
    80008718:	03013d03          	ld	s10,48(sp)
    8000871c:	02813d83          	ld	s11,40(sp)
    80008720:	0d010113          	addi	sp,sp,208
    80008724:	00008067          	ret
    80008728:	07300713          	li	a4,115
    8000872c:	1ce78a63          	beq	a5,a4,80008900 <__printf+0x4b8>
    80008730:	07800713          	li	a4,120
    80008734:	1ee79e63          	bne	a5,a4,80008930 <__printf+0x4e8>
    80008738:	f7843783          	ld	a5,-136(s0)
    8000873c:	0007a703          	lw	a4,0(a5)
    80008740:	00878793          	addi	a5,a5,8
    80008744:	f6f43c23          	sd	a5,-136(s0)
    80008748:	28074263          	bltz	a4,800089cc <__printf+0x584>
    8000874c:	00002d97          	auipc	s11,0x2
    80008750:	00cd8d93          	addi	s11,s11,12 # 8000a758 <digits>
    80008754:	00f77793          	andi	a5,a4,15
    80008758:	00fd87b3          	add	a5,s11,a5
    8000875c:	0007c683          	lbu	a3,0(a5)
    80008760:	00f00613          	li	a2,15
    80008764:	0007079b          	sext.w	a5,a4
    80008768:	f8d40023          	sb	a3,-128(s0)
    8000876c:	0047559b          	srliw	a1,a4,0x4
    80008770:	0047569b          	srliw	a3,a4,0x4
    80008774:	00000c93          	li	s9,0
    80008778:	0ee65063          	bge	a2,a4,80008858 <__printf+0x410>
    8000877c:	00f6f693          	andi	a3,a3,15
    80008780:	00dd86b3          	add	a3,s11,a3
    80008784:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80008788:	0087d79b          	srliw	a5,a5,0x8
    8000878c:	00100c93          	li	s9,1
    80008790:	f8d400a3          	sb	a3,-127(s0)
    80008794:	0cb67263          	bgeu	a2,a1,80008858 <__printf+0x410>
    80008798:	00f7f693          	andi	a3,a5,15
    8000879c:	00dd86b3          	add	a3,s11,a3
    800087a0:	0006c583          	lbu	a1,0(a3)
    800087a4:	00f00613          	li	a2,15
    800087a8:	0047d69b          	srliw	a3,a5,0x4
    800087ac:	f8b40123          	sb	a1,-126(s0)
    800087b0:	0047d593          	srli	a1,a5,0x4
    800087b4:	28f67e63          	bgeu	a2,a5,80008a50 <__printf+0x608>
    800087b8:	00f6f693          	andi	a3,a3,15
    800087bc:	00dd86b3          	add	a3,s11,a3
    800087c0:	0006c503          	lbu	a0,0(a3)
    800087c4:	0087d813          	srli	a6,a5,0x8
    800087c8:	0087d69b          	srliw	a3,a5,0x8
    800087cc:	f8a401a3          	sb	a0,-125(s0)
    800087d0:	28b67663          	bgeu	a2,a1,80008a5c <__printf+0x614>
    800087d4:	00f6f693          	andi	a3,a3,15
    800087d8:	00dd86b3          	add	a3,s11,a3
    800087dc:	0006c583          	lbu	a1,0(a3)
    800087e0:	00c7d513          	srli	a0,a5,0xc
    800087e4:	00c7d69b          	srliw	a3,a5,0xc
    800087e8:	f8b40223          	sb	a1,-124(s0)
    800087ec:	29067a63          	bgeu	a2,a6,80008a80 <__printf+0x638>
    800087f0:	00f6f693          	andi	a3,a3,15
    800087f4:	00dd86b3          	add	a3,s11,a3
    800087f8:	0006c583          	lbu	a1,0(a3)
    800087fc:	0107d813          	srli	a6,a5,0x10
    80008800:	0107d69b          	srliw	a3,a5,0x10
    80008804:	f8b402a3          	sb	a1,-123(s0)
    80008808:	28a67263          	bgeu	a2,a0,80008a8c <__printf+0x644>
    8000880c:	00f6f693          	andi	a3,a3,15
    80008810:	00dd86b3          	add	a3,s11,a3
    80008814:	0006c683          	lbu	a3,0(a3)
    80008818:	0147d79b          	srliw	a5,a5,0x14
    8000881c:	f8d40323          	sb	a3,-122(s0)
    80008820:	21067663          	bgeu	a2,a6,80008a2c <__printf+0x5e4>
    80008824:	02079793          	slli	a5,a5,0x20
    80008828:	0207d793          	srli	a5,a5,0x20
    8000882c:	00fd8db3          	add	s11,s11,a5
    80008830:	000dc683          	lbu	a3,0(s11)
    80008834:	00800793          	li	a5,8
    80008838:	00700c93          	li	s9,7
    8000883c:	f8d403a3          	sb	a3,-121(s0)
    80008840:	00075c63          	bgez	a4,80008858 <__printf+0x410>
    80008844:	f9040713          	addi	a4,s0,-112
    80008848:	00f70733          	add	a4,a4,a5
    8000884c:	02d00693          	li	a3,45
    80008850:	fed70823          	sb	a3,-16(a4)
    80008854:	00078c93          	mv	s9,a5
    80008858:	f8040793          	addi	a5,s0,-128
    8000885c:	01978cb3          	add	s9,a5,s9
    80008860:	f7f40d13          	addi	s10,s0,-129
    80008864:	000cc503          	lbu	a0,0(s9)
    80008868:	fffc8c93          	addi	s9,s9,-1
    8000886c:	00000097          	auipc	ra,0x0
    80008870:	9f8080e7          	jalr	-1544(ra) # 80008264 <consputc>
    80008874:	ff9d18e3          	bne	s10,s9,80008864 <__printf+0x41c>
    80008878:	0100006f          	j	80008888 <__printf+0x440>
    8000887c:	00000097          	auipc	ra,0x0
    80008880:	9e8080e7          	jalr	-1560(ra) # 80008264 <consputc>
    80008884:	000c8493          	mv	s1,s9
    80008888:	00094503          	lbu	a0,0(s2)
    8000888c:	c60510e3          	bnez	a0,800084ec <__printf+0xa4>
    80008890:	e40c0ee3          	beqz	s8,800086ec <__printf+0x2a4>
    80008894:	00033517          	auipc	a0,0x33
    80008898:	9cc50513          	addi	a0,a0,-1588 # 8003b260 <pr>
    8000889c:	00001097          	auipc	ra,0x1
    800088a0:	94c080e7          	jalr	-1716(ra) # 800091e8 <release>
    800088a4:	e49ff06f          	j	800086ec <__printf+0x2a4>
    800088a8:	f7843783          	ld	a5,-136(s0)
    800088ac:	03000513          	li	a0,48
    800088b0:	01000d13          	li	s10,16
    800088b4:	00878713          	addi	a4,a5,8
    800088b8:	0007bc83          	ld	s9,0(a5)
    800088bc:	f6e43c23          	sd	a4,-136(s0)
    800088c0:	00000097          	auipc	ra,0x0
    800088c4:	9a4080e7          	jalr	-1628(ra) # 80008264 <consputc>
    800088c8:	07800513          	li	a0,120
    800088cc:	00000097          	auipc	ra,0x0
    800088d0:	998080e7          	jalr	-1640(ra) # 80008264 <consputc>
    800088d4:	00002d97          	auipc	s11,0x2
    800088d8:	e84d8d93          	addi	s11,s11,-380 # 8000a758 <digits>
    800088dc:	03ccd793          	srli	a5,s9,0x3c
    800088e0:	00fd87b3          	add	a5,s11,a5
    800088e4:	0007c503          	lbu	a0,0(a5)
    800088e8:	fffd0d1b          	addiw	s10,s10,-1
    800088ec:	004c9c93          	slli	s9,s9,0x4
    800088f0:	00000097          	auipc	ra,0x0
    800088f4:	974080e7          	jalr	-1676(ra) # 80008264 <consputc>
    800088f8:	fe0d12e3          	bnez	s10,800088dc <__printf+0x494>
    800088fc:	f8dff06f          	j	80008888 <__printf+0x440>
    80008900:	f7843783          	ld	a5,-136(s0)
    80008904:	0007bc83          	ld	s9,0(a5)
    80008908:	00878793          	addi	a5,a5,8
    8000890c:	f6f43c23          	sd	a5,-136(s0)
    80008910:	000c9a63          	bnez	s9,80008924 <__printf+0x4dc>
    80008914:	1080006f          	j	80008a1c <__printf+0x5d4>
    80008918:	001c8c93          	addi	s9,s9,1
    8000891c:	00000097          	auipc	ra,0x0
    80008920:	948080e7          	jalr	-1720(ra) # 80008264 <consputc>
    80008924:	000cc503          	lbu	a0,0(s9)
    80008928:	fe0518e3          	bnez	a0,80008918 <__printf+0x4d0>
    8000892c:	f5dff06f          	j	80008888 <__printf+0x440>
    80008930:	02500513          	li	a0,37
    80008934:	00000097          	auipc	ra,0x0
    80008938:	930080e7          	jalr	-1744(ra) # 80008264 <consputc>
    8000893c:	000c8513          	mv	a0,s9
    80008940:	00000097          	auipc	ra,0x0
    80008944:	924080e7          	jalr	-1756(ra) # 80008264 <consputc>
    80008948:	f41ff06f          	j	80008888 <__printf+0x440>
    8000894c:	02500513          	li	a0,37
    80008950:	00000097          	auipc	ra,0x0
    80008954:	914080e7          	jalr	-1772(ra) # 80008264 <consputc>
    80008958:	f31ff06f          	j	80008888 <__printf+0x440>
    8000895c:	00030513          	mv	a0,t1
    80008960:	00000097          	auipc	ra,0x0
    80008964:	7bc080e7          	jalr	1980(ra) # 8000911c <acquire>
    80008968:	b4dff06f          	j	800084b4 <__printf+0x6c>
    8000896c:	40c0053b          	negw	a0,a2
    80008970:	00a00713          	li	a4,10
    80008974:	02e576bb          	remuw	a3,a0,a4
    80008978:	00002d97          	auipc	s11,0x2
    8000897c:	de0d8d93          	addi	s11,s11,-544 # 8000a758 <digits>
    80008980:	ff700593          	li	a1,-9
    80008984:	02069693          	slli	a3,a3,0x20
    80008988:	0206d693          	srli	a3,a3,0x20
    8000898c:	00dd86b3          	add	a3,s11,a3
    80008990:	0006c683          	lbu	a3,0(a3)
    80008994:	02e557bb          	divuw	a5,a0,a4
    80008998:	f8d40023          	sb	a3,-128(s0)
    8000899c:	10b65e63          	bge	a2,a1,80008ab8 <__printf+0x670>
    800089a0:	06300593          	li	a1,99
    800089a4:	02e7f6bb          	remuw	a3,a5,a4
    800089a8:	02069693          	slli	a3,a3,0x20
    800089ac:	0206d693          	srli	a3,a3,0x20
    800089b0:	00dd86b3          	add	a3,s11,a3
    800089b4:	0006c683          	lbu	a3,0(a3)
    800089b8:	02e7d73b          	divuw	a4,a5,a4
    800089bc:	00200793          	li	a5,2
    800089c0:	f8d400a3          	sb	a3,-127(s0)
    800089c4:	bca5ece3          	bltu	a1,a0,8000859c <__printf+0x154>
    800089c8:	ce5ff06f          	j	800086ac <__printf+0x264>
    800089cc:	40e007bb          	negw	a5,a4
    800089d0:	00002d97          	auipc	s11,0x2
    800089d4:	d88d8d93          	addi	s11,s11,-632 # 8000a758 <digits>
    800089d8:	00f7f693          	andi	a3,a5,15
    800089dc:	00dd86b3          	add	a3,s11,a3
    800089e0:	0006c583          	lbu	a1,0(a3)
    800089e4:	ff100613          	li	a2,-15
    800089e8:	0047d69b          	srliw	a3,a5,0x4
    800089ec:	f8b40023          	sb	a1,-128(s0)
    800089f0:	0047d59b          	srliw	a1,a5,0x4
    800089f4:	0ac75e63          	bge	a4,a2,80008ab0 <__printf+0x668>
    800089f8:	00f6f693          	andi	a3,a3,15
    800089fc:	00dd86b3          	add	a3,s11,a3
    80008a00:	0006c603          	lbu	a2,0(a3)
    80008a04:	00f00693          	li	a3,15
    80008a08:	0087d79b          	srliw	a5,a5,0x8
    80008a0c:	f8c400a3          	sb	a2,-127(s0)
    80008a10:	d8b6e4e3          	bltu	a3,a1,80008798 <__printf+0x350>
    80008a14:	00200793          	li	a5,2
    80008a18:	e2dff06f          	j	80008844 <__printf+0x3fc>
    80008a1c:	00002c97          	auipc	s9,0x2
    80008a20:	d1cc8c93          	addi	s9,s9,-740 # 8000a738 <CONSOLE_STATUS+0x728>
    80008a24:	02800513          	li	a0,40
    80008a28:	ef1ff06f          	j	80008918 <__printf+0x4d0>
    80008a2c:	00700793          	li	a5,7
    80008a30:	00600c93          	li	s9,6
    80008a34:	e0dff06f          	j	80008840 <__printf+0x3f8>
    80008a38:	00700793          	li	a5,7
    80008a3c:	00600c93          	li	s9,6
    80008a40:	c69ff06f          	j	800086a8 <__printf+0x260>
    80008a44:	00300793          	li	a5,3
    80008a48:	00200c93          	li	s9,2
    80008a4c:	c5dff06f          	j	800086a8 <__printf+0x260>
    80008a50:	00300793          	li	a5,3
    80008a54:	00200c93          	li	s9,2
    80008a58:	de9ff06f          	j	80008840 <__printf+0x3f8>
    80008a5c:	00400793          	li	a5,4
    80008a60:	00300c93          	li	s9,3
    80008a64:	dddff06f          	j	80008840 <__printf+0x3f8>
    80008a68:	00400793          	li	a5,4
    80008a6c:	00300c93          	li	s9,3
    80008a70:	c39ff06f          	j	800086a8 <__printf+0x260>
    80008a74:	00500793          	li	a5,5
    80008a78:	00400c93          	li	s9,4
    80008a7c:	c2dff06f          	j	800086a8 <__printf+0x260>
    80008a80:	00500793          	li	a5,5
    80008a84:	00400c93          	li	s9,4
    80008a88:	db9ff06f          	j	80008840 <__printf+0x3f8>
    80008a8c:	00600793          	li	a5,6
    80008a90:	00500c93          	li	s9,5
    80008a94:	dadff06f          	j	80008840 <__printf+0x3f8>
    80008a98:	00600793          	li	a5,6
    80008a9c:	00500c93          	li	s9,5
    80008aa0:	c09ff06f          	j	800086a8 <__printf+0x260>
    80008aa4:	00800793          	li	a5,8
    80008aa8:	00700c93          	li	s9,7
    80008aac:	bfdff06f          	j	800086a8 <__printf+0x260>
    80008ab0:	00100793          	li	a5,1
    80008ab4:	d91ff06f          	j	80008844 <__printf+0x3fc>
    80008ab8:	00100793          	li	a5,1
    80008abc:	bf1ff06f          	j	800086ac <__printf+0x264>
    80008ac0:	00900793          	li	a5,9
    80008ac4:	00800c93          	li	s9,8
    80008ac8:	be1ff06f          	j	800086a8 <__printf+0x260>
    80008acc:	00002517          	auipc	a0,0x2
    80008ad0:	c7450513          	addi	a0,a0,-908 # 8000a740 <CONSOLE_STATUS+0x730>
    80008ad4:	00000097          	auipc	ra,0x0
    80008ad8:	918080e7          	jalr	-1768(ra) # 800083ec <panic>

0000000080008adc <printfinit>:
    80008adc:	fe010113          	addi	sp,sp,-32
    80008ae0:	00813823          	sd	s0,16(sp)
    80008ae4:	00913423          	sd	s1,8(sp)
    80008ae8:	00113c23          	sd	ra,24(sp)
    80008aec:	02010413          	addi	s0,sp,32
    80008af0:	00032497          	auipc	s1,0x32
    80008af4:	77048493          	addi	s1,s1,1904 # 8003b260 <pr>
    80008af8:	00048513          	mv	a0,s1
    80008afc:	00002597          	auipc	a1,0x2
    80008b00:	c5458593          	addi	a1,a1,-940 # 8000a750 <CONSOLE_STATUS+0x740>
    80008b04:	00000097          	auipc	ra,0x0
    80008b08:	5f4080e7          	jalr	1524(ra) # 800090f8 <initlock>
    80008b0c:	01813083          	ld	ra,24(sp)
    80008b10:	01013403          	ld	s0,16(sp)
    80008b14:	0004ac23          	sw	zero,24(s1)
    80008b18:	00813483          	ld	s1,8(sp)
    80008b1c:	02010113          	addi	sp,sp,32
    80008b20:	00008067          	ret

0000000080008b24 <uartinit>:
    80008b24:	ff010113          	addi	sp,sp,-16
    80008b28:	00813423          	sd	s0,8(sp)
    80008b2c:	01010413          	addi	s0,sp,16
    80008b30:	100007b7          	lui	a5,0x10000
    80008b34:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80008b38:	f8000713          	li	a4,-128
    80008b3c:	00e781a3          	sb	a4,3(a5)
    80008b40:	00300713          	li	a4,3
    80008b44:	00e78023          	sb	a4,0(a5)
    80008b48:	000780a3          	sb	zero,1(a5)
    80008b4c:	00e781a3          	sb	a4,3(a5)
    80008b50:	00700693          	li	a3,7
    80008b54:	00d78123          	sb	a3,2(a5)
    80008b58:	00e780a3          	sb	a4,1(a5)
    80008b5c:	00813403          	ld	s0,8(sp)
    80008b60:	01010113          	addi	sp,sp,16
    80008b64:	00008067          	ret

0000000080008b68 <uartputc>:
    80008b68:	00005797          	auipc	a5,0x5
    80008b6c:	9a07a783          	lw	a5,-1632(a5) # 8000d508 <panicked>
    80008b70:	00078463          	beqz	a5,80008b78 <uartputc+0x10>
    80008b74:	0000006f          	j	80008b74 <uartputc+0xc>
    80008b78:	fd010113          	addi	sp,sp,-48
    80008b7c:	02813023          	sd	s0,32(sp)
    80008b80:	00913c23          	sd	s1,24(sp)
    80008b84:	01213823          	sd	s2,16(sp)
    80008b88:	01313423          	sd	s3,8(sp)
    80008b8c:	02113423          	sd	ra,40(sp)
    80008b90:	03010413          	addi	s0,sp,48
    80008b94:	00005917          	auipc	s2,0x5
    80008b98:	97c90913          	addi	s2,s2,-1668 # 8000d510 <uart_tx_r>
    80008b9c:	00093783          	ld	a5,0(s2)
    80008ba0:	00005497          	auipc	s1,0x5
    80008ba4:	97848493          	addi	s1,s1,-1672 # 8000d518 <uart_tx_w>
    80008ba8:	0004b703          	ld	a4,0(s1)
    80008bac:	02078693          	addi	a3,a5,32
    80008bb0:	00050993          	mv	s3,a0
    80008bb4:	02e69c63          	bne	a3,a4,80008bec <uartputc+0x84>
    80008bb8:	00001097          	auipc	ra,0x1
    80008bbc:	834080e7          	jalr	-1996(ra) # 800093ec <push_on>
    80008bc0:	00093783          	ld	a5,0(s2)
    80008bc4:	0004b703          	ld	a4,0(s1)
    80008bc8:	02078793          	addi	a5,a5,32
    80008bcc:	00e79463          	bne	a5,a4,80008bd4 <uartputc+0x6c>
    80008bd0:	0000006f          	j	80008bd0 <uartputc+0x68>
    80008bd4:	00001097          	auipc	ra,0x1
    80008bd8:	88c080e7          	jalr	-1908(ra) # 80009460 <pop_on>
    80008bdc:	00093783          	ld	a5,0(s2)
    80008be0:	0004b703          	ld	a4,0(s1)
    80008be4:	02078693          	addi	a3,a5,32
    80008be8:	fce688e3          	beq	a3,a4,80008bb8 <uartputc+0x50>
    80008bec:	01f77693          	andi	a3,a4,31
    80008bf0:	00032597          	auipc	a1,0x32
    80008bf4:	69058593          	addi	a1,a1,1680 # 8003b280 <uart_tx_buf>
    80008bf8:	00d586b3          	add	a3,a1,a3
    80008bfc:	00170713          	addi	a4,a4,1
    80008c00:	01368023          	sb	s3,0(a3)
    80008c04:	00e4b023          	sd	a4,0(s1)
    80008c08:	10000637          	lui	a2,0x10000
    80008c0c:	02f71063          	bne	a4,a5,80008c2c <uartputc+0xc4>
    80008c10:	0340006f          	j	80008c44 <uartputc+0xdc>
    80008c14:	00074703          	lbu	a4,0(a4)
    80008c18:	00f93023          	sd	a5,0(s2)
    80008c1c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80008c20:	00093783          	ld	a5,0(s2)
    80008c24:	0004b703          	ld	a4,0(s1)
    80008c28:	00f70e63          	beq	a4,a5,80008c44 <uartputc+0xdc>
    80008c2c:	00564683          	lbu	a3,5(a2)
    80008c30:	01f7f713          	andi	a4,a5,31
    80008c34:	00e58733          	add	a4,a1,a4
    80008c38:	0206f693          	andi	a3,a3,32
    80008c3c:	00178793          	addi	a5,a5,1
    80008c40:	fc069ae3          	bnez	a3,80008c14 <uartputc+0xac>
    80008c44:	02813083          	ld	ra,40(sp)
    80008c48:	02013403          	ld	s0,32(sp)
    80008c4c:	01813483          	ld	s1,24(sp)
    80008c50:	01013903          	ld	s2,16(sp)
    80008c54:	00813983          	ld	s3,8(sp)
    80008c58:	03010113          	addi	sp,sp,48
    80008c5c:	00008067          	ret

0000000080008c60 <uartputc_sync>:
    80008c60:	ff010113          	addi	sp,sp,-16
    80008c64:	00813423          	sd	s0,8(sp)
    80008c68:	01010413          	addi	s0,sp,16
    80008c6c:	00005717          	auipc	a4,0x5
    80008c70:	89c72703          	lw	a4,-1892(a4) # 8000d508 <panicked>
    80008c74:	02071663          	bnez	a4,80008ca0 <uartputc_sync+0x40>
    80008c78:	00050793          	mv	a5,a0
    80008c7c:	100006b7          	lui	a3,0x10000
    80008c80:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80008c84:	02077713          	andi	a4,a4,32
    80008c88:	fe070ce3          	beqz	a4,80008c80 <uartputc_sync+0x20>
    80008c8c:	0ff7f793          	andi	a5,a5,255
    80008c90:	00f68023          	sb	a5,0(a3)
    80008c94:	00813403          	ld	s0,8(sp)
    80008c98:	01010113          	addi	sp,sp,16
    80008c9c:	00008067          	ret
    80008ca0:	0000006f          	j	80008ca0 <uartputc_sync+0x40>

0000000080008ca4 <uartstart>:
    80008ca4:	ff010113          	addi	sp,sp,-16
    80008ca8:	00813423          	sd	s0,8(sp)
    80008cac:	01010413          	addi	s0,sp,16
    80008cb0:	00005617          	auipc	a2,0x5
    80008cb4:	86060613          	addi	a2,a2,-1952 # 8000d510 <uart_tx_r>
    80008cb8:	00005517          	auipc	a0,0x5
    80008cbc:	86050513          	addi	a0,a0,-1952 # 8000d518 <uart_tx_w>
    80008cc0:	00063783          	ld	a5,0(a2)
    80008cc4:	00053703          	ld	a4,0(a0)
    80008cc8:	04f70263          	beq	a4,a5,80008d0c <uartstart+0x68>
    80008ccc:	100005b7          	lui	a1,0x10000
    80008cd0:	00032817          	auipc	a6,0x32
    80008cd4:	5b080813          	addi	a6,a6,1456 # 8003b280 <uart_tx_buf>
    80008cd8:	01c0006f          	j	80008cf4 <uartstart+0x50>
    80008cdc:	0006c703          	lbu	a4,0(a3)
    80008ce0:	00f63023          	sd	a5,0(a2)
    80008ce4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008ce8:	00063783          	ld	a5,0(a2)
    80008cec:	00053703          	ld	a4,0(a0)
    80008cf0:	00f70e63          	beq	a4,a5,80008d0c <uartstart+0x68>
    80008cf4:	01f7f713          	andi	a4,a5,31
    80008cf8:	00e806b3          	add	a3,a6,a4
    80008cfc:	0055c703          	lbu	a4,5(a1)
    80008d00:	00178793          	addi	a5,a5,1
    80008d04:	02077713          	andi	a4,a4,32
    80008d08:	fc071ae3          	bnez	a4,80008cdc <uartstart+0x38>
    80008d0c:	00813403          	ld	s0,8(sp)
    80008d10:	01010113          	addi	sp,sp,16
    80008d14:	00008067          	ret

0000000080008d18 <uartgetc>:
    80008d18:	ff010113          	addi	sp,sp,-16
    80008d1c:	00813423          	sd	s0,8(sp)
    80008d20:	01010413          	addi	s0,sp,16
    80008d24:	10000737          	lui	a4,0x10000
    80008d28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80008d2c:	0017f793          	andi	a5,a5,1
    80008d30:	00078c63          	beqz	a5,80008d48 <uartgetc+0x30>
    80008d34:	00074503          	lbu	a0,0(a4)
    80008d38:	0ff57513          	andi	a0,a0,255
    80008d3c:	00813403          	ld	s0,8(sp)
    80008d40:	01010113          	addi	sp,sp,16
    80008d44:	00008067          	ret
    80008d48:	fff00513          	li	a0,-1
    80008d4c:	ff1ff06f          	j	80008d3c <uartgetc+0x24>

0000000080008d50 <uartintr>:
    80008d50:	100007b7          	lui	a5,0x10000
    80008d54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80008d58:	0017f793          	andi	a5,a5,1
    80008d5c:	0a078463          	beqz	a5,80008e04 <uartintr+0xb4>
    80008d60:	fe010113          	addi	sp,sp,-32
    80008d64:	00813823          	sd	s0,16(sp)
    80008d68:	00913423          	sd	s1,8(sp)
    80008d6c:	00113c23          	sd	ra,24(sp)
    80008d70:	02010413          	addi	s0,sp,32
    80008d74:	100004b7          	lui	s1,0x10000
    80008d78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80008d7c:	0ff57513          	andi	a0,a0,255
    80008d80:	fffff097          	auipc	ra,0xfffff
    80008d84:	534080e7          	jalr	1332(ra) # 800082b4 <consoleintr>
    80008d88:	0054c783          	lbu	a5,5(s1)
    80008d8c:	0017f793          	andi	a5,a5,1
    80008d90:	fe0794e3          	bnez	a5,80008d78 <uartintr+0x28>
    80008d94:	00004617          	auipc	a2,0x4
    80008d98:	77c60613          	addi	a2,a2,1916 # 8000d510 <uart_tx_r>
    80008d9c:	00004517          	auipc	a0,0x4
    80008da0:	77c50513          	addi	a0,a0,1916 # 8000d518 <uart_tx_w>
    80008da4:	00063783          	ld	a5,0(a2)
    80008da8:	00053703          	ld	a4,0(a0)
    80008dac:	04f70263          	beq	a4,a5,80008df0 <uartintr+0xa0>
    80008db0:	100005b7          	lui	a1,0x10000
    80008db4:	00032817          	auipc	a6,0x32
    80008db8:	4cc80813          	addi	a6,a6,1228 # 8003b280 <uart_tx_buf>
    80008dbc:	01c0006f          	j	80008dd8 <uartintr+0x88>
    80008dc0:	0006c703          	lbu	a4,0(a3)
    80008dc4:	00f63023          	sd	a5,0(a2)
    80008dc8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008dcc:	00063783          	ld	a5,0(a2)
    80008dd0:	00053703          	ld	a4,0(a0)
    80008dd4:	00f70e63          	beq	a4,a5,80008df0 <uartintr+0xa0>
    80008dd8:	01f7f713          	andi	a4,a5,31
    80008ddc:	00e806b3          	add	a3,a6,a4
    80008de0:	0055c703          	lbu	a4,5(a1)
    80008de4:	00178793          	addi	a5,a5,1
    80008de8:	02077713          	andi	a4,a4,32
    80008dec:	fc071ae3          	bnez	a4,80008dc0 <uartintr+0x70>
    80008df0:	01813083          	ld	ra,24(sp)
    80008df4:	01013403          	ld	s0,16(sp)
    80008df8:	00813483          	ld	s1,8(sp)
    80008dfc:	02010113          	addi	sp,sp,32
    80008e00:	00008067          	ret
    80008e04:	00004617          	auipc	a2,0x4
    80008e08:	70c60613          	addi	a2,a2,1804 # 8000d510 <uart_tx_r>
    80008e0c:	00004517          	auipc	a0,0x4
    80008e10:	70c50513          	addi	a0,a0,1804 # 8000d518 <uart_tx_w>
    80008e14:	00063783          	ld	a5,0(a2)
    80008e18:	00053703          	ld	a4,0(a0)
    80008e1c:	04f70263          	beq	a4,a5,80008e60 <uartintr+0x110>
    80008e20:	100005b7          	lui	a1,0x10000
    80008e24:	00032817          	auipc	a6,0x32
    80008e28:	45c80813          	addi	a6,a6,1116 # 8003b280 <uart_tx_buf>
    80008e2c:	01c0006f          	j	80008e48 <uartintr+0xf8>
    80008e30:	0006c703          	lbu	a4,0(a3)
    80008e34:	00f63023          	sd	a5,0(a2)
    80008e38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80008e3c:	00063783          	ld	a5,0(a2)
    80008e40:	00053703          	ld	a4,0(a0)
    80008e44:	02f70063          	beq	a4,a5,80008e64 <uartintr+0x114>
    80008e48:	01f7f713          	andi	a4,a5,31
    80008e4c:	00e806b3          	add	a3,a6,a4
    80008e50:	0055c703          	lbu	a4,5(a1)
    80008e54:	00178793          	addi	a5,a5,1
    80008e58:	02077713          	andi	a4,a4,32
    80008e5c:	fc071ae3          	bnez	a4,80008e30 <uartintr+0xe0>
    80008e60:	00008067          	ret
    80008e64:	00008067          	ret

0000000080008e68 <kinit>:
    80008e68:	fc010113          	addi	sp,sp,-64
    80008e6c:	02913423          	sd	s1,40(sp)
    80008e70:	fffff7b7          	lui	a5,0xfffff
    80008e74:	00033497          	auipc	s1,0x33
    80008e78:	42b48493          	addi	s1,s1,1067 # 8003c29f <end+0xfff>
    80008e7c:	02813823          	sd	s0,48(sp)
    80008e80:	01313c23          	sd	s3,24(sp)
    80008e84:	00f4f4b3          	and	s1,s1,a5
    80008e88:	02113c23          	sd	ra,56(sp)
    80008e8c:	03213023          	sd	s2,32(sp)
    80008e90:	01413823          	sd	s4,16(sp)
    80008e94:	01513423          	sd	s5,8(sp)
    80008e98:	04010413          	addi	s0,sp,64
    80008e9c:	000017b7          	lui	a5,0x1
    80008ea0:	01100993          	li	s3,17
    80008ea4:	00f487b3          	add	a5,s1,a5
    80008ea8:	01b99993          	slli	s3,s3,0x1b
    80008eac:	06f9e063          	bltu	s3,a5,80008f0c <kinit+0xa4>
    80008eb0:	00032a97          	auipc	s5,0x32
    80008eb4:	3f0a8a93          	addi	s5,s5,1008 # 8003b2a0 <end>
    80008eb8:	0754ec63          	bltu	s1,s5,80008f30 <kinit+0xc8>
    80008ebc:	0734fa63          	bgeu	s1,s3,80008f30 <kinit+0xc8>
    80008ec0:	00088a37          	lui	s4,0x88
    80008ec4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80008ec8:	00004917          	auipc	s2,0x4
    80008ecc:	65890913          	addi	s2,s2,1624 # 8000d520 <kmem>
    80008ed0:	00ca1a13          	slli	s4,s4,0xc
    80008ed4:	0140006f          	j	80008ee8 <kinit+0x80>
    80008ed8:	000017b7          	lui	a5,0x1
    80008edc:	00f484b3          	add	s1,s1,a5
    80008ee0:	0554e863          	bltu	s1,s5,80008f30 <kinit+0xc8>
    80008ee4:	0534f663          	bgeu	s1,s3,80008f30 <kinit+0xc8>
    80008ee8:	00001637          	lui	a2,0x1
    80008eec:	00100593          	li	a1,1
    80008ef0:	00048513          	mv	a0,s1
    80008ef4:	00000097          	auipc	ra,0x0
    80008ef8:	5e4080e7          	jalr	1508(ra) # 800094d8 <__memset>
    80008efc:	00093783          	ld	a5,0(s2)
    80008f00:	00f4b023          	sd	a5,0(s1)
    80008f04:	00993023          	sd	s1,0(s2)
    80008f08:	fd4498e3          	bne	s1,s4,80008ed8 <kinit+0x70>
    80008f0c:	03813083          	ld	ra,56(sp)
    80008f10:	03013403          	ld	s0,48(sp)
    80008f14:	02813483          	ld	s1,40(sp)
    80008f18:	02013903          	ld	s2,32(sp)
    80008f1c:	01813983          	ld	s3,24(sp)
    80008f20:	01013a03          	ld	s4,16(sp)
    80008f24:	00813a83          	ld	s5,8(sp)
    80008f28:	04010113          	addi	sp,sp,64
    80008f2c:	00008067          	ret
    80008f30:	00002517          	auipc	a0,0x2
    80008f34:	84050513          	addi	a0,a0,-1984 # 8000a770 <digits+0x18>
    80008f38:	fffff097          	auipc	ra,0xfffff
    80008f3c:	4b4080e7          	jalr	1204(ra) # 800083ec <panic>

0000000080008f40 <freerange>:
    80008f40:	fc010113          	addi	sp,sp,-64
    80008f44:	000017b7          	lui	a5,0x1
    80008f48:	02913423          	sd	s1,40(sp)
    80008f4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80008f50:	009504b3          	add	s1,a0,s1
    80008f54:	fffff537          	lui	a0,0xfffff
    80008f58:	02813823          	sd	s0,48(sp)
    80008f5c:	02113c23          	sd	ra,56(sp)
    80008f60:	03213023          	sd	s2,32(sp)
    80008f64:	01313c23          	sd	s3,24(sp)
    80008f68:	01413823          	sd	s4,16(sp)
    80008f6c:	01513423          	sd	s5,8(sp)
    80008f70:	01613023          	sd	s6,0(sp)
    80008f74:	04010413          	addi	s0,sp,64
    80008f78:	00a4f4b3          	and	s1,s1,a0
    80008f7c:	00f487b3          	add	a5,s1,a5
    80008f80:	06f5e463          	bltu	a1,a5,80008fe8 <freerange+0xa8>
    80008f84:	00032a97          	auipc	s5,0x32
    80008f88:	31ca8a93          	addi	s5,s5,796 # 8003b2a0 <end>
    80008f8c:	0954e263          	bltu	s1,s5,80009010 <freerange+0xd0>
    80008f90:	01100993          	li	s3,17
    80008f94:	01b99993          	slli	s3,s3,0x1b
    80008f98:	0734fc63          	bgeu	s1,s3,80009010 <freerange+0xd0>
    80008f9c:	00058a13          	mv	s4,a1
    80008fa0:	00004917          	auipc	s2,0x4
    80008fa4:	58090913          	addi	s2,s2,1408 # 8000d520 <kmem>
    80008fa8:	00002b37          	lui	s6,0x2
    80008fac:	0140006f          	j	80008fc0 <freerange+0x80>
    80008fb0:	000017b7          	lui	a5,0x1
    80008fb4:	00f484b3          	add	s1,s1,a5
    80008fb8:	0554ec63          	bltu	s1,s5,80009010 <freerange+0xd0>
    80008fbc:	0534fa63          	bgeu	s1,s3,80009010 <freerange+0xd0>
    80008fc0:	00001637          	lui	a2,0x1
    80008fc4:	00100593          	li	a1,1
    80008fc8:	00048513          	mv	a0,s1
    80008fcc:	00000097          	auipc	ra,0x0
    80008fd0:	50c080e7          	jalr	1292(ra) # 800094d8 <__memset>
    80008fd4:	00093703          	ld	a4,0(s2)
    80008fd8:	016487b3          	add	a5,s1,s6
    80008fdc:	00e4b023          	sd	a4,0(s1)
    80008fe0:	00993023          	sd	s1,0(s2)
    80008fe4:	fcfa76e3          	bgeu	s4,a5,80008fb0 <freerange+0x70>
    80008fe8:	03813083          	ld	ra,56(sp)
    80008fec:	03013403          	ld	s0,48(sp)
    80008ff0:	02813483          	ld	s1,40(sp)
    80008ff4:	02013903          	ld	s2,32(sp)
    80008ff8:	01813983          	ld	s3,24(sp)
    80008ffc:	01013a03          	ld	s4,16(sp)
    80009000:	00813a83          	ld	s5,8(sp)
    80009004:	00013b03          	ld	s6,0(sp)
    80009008:	04010113          	addi	sp,sp,64
    8000900c:	00008067          	ret
    80009010:	00001517          	auipc	a0,0x1
    80009014:	76050513          	addi	a0,a0,1888 # 8000a770 <digits+0x18>
    80009018:	fffff097          	auipc	ra,0xfffff
    8000901c:	3d4080e7          	jalr	980(ra) # 800083ec <panic>

0000000080009020 <kfree>:
    80009020:	fe010113          	addi	sp,sp,-32
    80009024:	00813823          	sd	s0,16(sp)
    80009028:	00113c23          	sd	ra,24(sp)
    8000902c:	00913423          	sd	s1,8(sp)
    80009030:	02010413          	addi	s0,sp,32
    80009034:	03451793          	slli	a5,a0,0x34
    80009038:	04079c63          	bnez	a5,80009090 <kfree+0x70>
    8000903c:	00032797          	auipc	a5,0x32
    80009040:	26478793          	addi	a5,a5,612 # 8003b2a0 <end>
    80009044:	00050493          	mv	s1,a0
    80009048:	04f56463          	bltu	a0,a5,80009090 <kfree+0x70>
    8000904c:	01100793          	li	a5,17
    80009050:	01b79793          	slli	a5,a5,0x1b
    80009054:	02f57e63          	bgeu	a0,a5,80009090 <kfree+0x70>
    80009058:	00001637          	lui	a2,0x1
    8000905c:	00100593          	li	a1,1
    80009060:	00000097          	auipc	ra,0x0
    80009064:	478080e7          	jalr	1144(ra) # 800094d8 <__memset>
    80009068:	00004797          	auipc	a5,0x4
    8000906c:	4b878793          	addi	a5,a5,1208 # 8000d520 <kmem>
    80009070:	0007b703          	ld	a4,0(a5)
    80009074:	01813083          	ld	ra,24(sp)
    80009078:	01013403          	ld	s0,16(sp)
    8000907c:	00e4b023          	sd	a4,0(s1)
    80009080:	0097b023          	sd	s1,0(a5)
    80009084:	00813483          	ld	s1,8(sp)
    80009088:	02010113          	addi	sp,sp,32
    8000908c:	00008067          	ret
    80009090:	00001517          	auipc	a0,0x1
    80009094:	6e050513          	addi	a0,a0,1760 # 8000a770 <digits+0x18>
    80009098:	fffff097          	auipc	ra,0xfffff
    8000909c:	354080e7          	jalr	852(ra) # 800083ec <panic>

00000000800090a0 <kalloc>:
    800090a0:	fe010113          	addi	sp,sp,-32
    800090a4:	00813823          	sd	s0,16(sp)
    800090a8:	00913423          	sd	s1,8(sp)
    800090ac:	00113c23          	sd	ra,24(sp)
    800090b0:	02010413          	addi	s0,sp,32
    800090b4:	00004797          	auipc	a5,0x4
    800090b8:	46c78793          	addi	a5,a5,1132 # 8000d520 <kmem>
    800090bc:	0007b483          	ld	s1,0(a5)
    800090c0:	02048063          	beqz	s1,800090e0 <kalloc+0x40>
    800090c4:	0004b703          	ld	a4,0(s1)
    800090c8:	00001637          	lui	a2,0x1
    800090cc:	00500593          	li	a1,5
    800090d0:	00048513          	mv	a0,s1
    800090d4:	00e7b023          	sd	a4,0(a5)
    800090d8:	00000097          	auipc	ra,0x0
    800090dc:	400080e7          	jalr	1024(ra) # 800094d8 <__memset>
    800090e0:	01813083          	ld	ra,24(sp)
    800090e4:	01013403          	ld	s0,16(sp)
    800090e8:	00048513          	mv	a0,s1
    800090ec:	00813483          	ld	s1,8(sp)
    800090f0:	02010113          	addi	sp,sp,32
    800090f4:	00008067          	ret

00000000800090f8 <initlock>:
    800090f8:	ff010113          	addi	sp,sp,-16
    800090fc:	00813423          	sd	s0,8(sp)
    80009100:	01010413          	addi	s0,sp,16
    80009104:	00813403          	ld	s0,8(sp)
    80009108:	00b53423          	sd	a1,8(a0)
    8000910c:	00052023          	sw	zero,0(a0)
    80009110:	00053823          	sd	zero,16(a0)
    80009114:	01010113          	addi	sp,sp,16
    80009118:	00008067          	ret

000000008000911c <acquire>:
    8000911c:	fe010113          	addi	sp,sp,-32
    80009120:	00813823          	sd	s0,16(sp)
    80009124:	00913423          	sd	s1,8(sp)
    80009128:	00113c23          	sd	ra,24(sp)
    8000912c:	01213023          	sd	s2,0(sp)
    80009130:	02010413          	addi	s0,sp,32
    80009134:	00050493          	mv	s1,a0
    80009138:	10002973          	csrr	s2,sstatus
    8000913c:	100027f3          	csrr	a5,sstatus
    80009140:	ffd7f793          	andi	a5,a5,-3
    80009144:	10079073          	csrw	sstatus,a5
    80009148:	fffff097          	auipc	ra,0xfffff
    8000914c:	8e0080e7          	jalr	-1824(ra) # 80007a28 <mycpu>
    80009150:	07852783          	lw	a5,120(a0)
    80009154:	06078e63          	beqz	a5,800091d0 <acquire+0xb4>
    80009158:	fffff097          	auipc	ra,0xfffff
    8000915c:	8d0080e7          	jalr	-1840(ra) # 80007a28 <mycpu>
    80009160:	07852783          	lw	a5,120(a0)
    80009164:	0004a703          	lw	a4,0(s1)
    80009168:	0017879b          	addiw	a5,a5,1
    8000916c:	06f52c23          	sw	a5,120(a0)
    80009170:	04071063          	bnez	a4,800091b0 <acquire+0x94>
    80009174:	00100713          	li	a4,1
    80009178:	00070793          	mv	a5,a4
    8000917c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80009180:	0007879b          	sext.w	a5,a5
    80009184:	fe079ae3          	bnez	a5,80009178 <acquire+0x5c>
    80009188:	0ff0000f          	fence
    8000918c:	fffff097          	auipc	ra,0xfffff
    80009190:	89c080e7          	jalr	-1892(ra) # 80007a28 <mycpu>
    80009194:	01813083          	ld	ra,24(sp)
    80009198:	01013403          	ld	s0,16(sp)
    8000919c:	00a4b823          	sd	a0,16(s1)
    800091a0:	00013903          	ld	s2,0(sp)
    800091a4:	00813483          	ld	s1,8(sp)
    800091a8:	02010113          	addi	sp,sp,32
    800091ac:	00008067          	ret
    800091b0:	0104b903          	ld	s2,16(s1)
    800091b4:	fffff097          	auipc	ra,0xfffff
    800091b8:	874080e7          	jalr	-1932(ra) # 80007a28 <mycpu>
    800091bc:	faa91ce3          	bne	s2,a0,80009174 <acquire+0x58>
    800091c0:	00001517          	auipc	a0,0x1
    800091c4:	5b850513          	addi	a0,a0,1464 # 8000a778 <digits+0x20>
    800091c8:	fffff097          	auipc	ra,0xfffff
    800091cc:	224080e7          	jalr	548(ra) # 800083ec <panic>
    800091d0:	00195913          	srli	s2,s2,0x1
    800091d4:	fffff097          	auipc	ra,0xfffff
    800091d8:	854080e7          	jalr	-1964(ra) # 80007a28 <mycpu>
    800091dc:	00197913          	andi	s2,s2,1
    800091e0:	07252e23          	sw	s2,124(a0)
    800091e4:	f75ff06f          	j	80009158 <acquire+0x3c>

00000000800091e8 <release>:
    800091e8:	fe010113          	addi	sp,sp,-32
    800091ec:	00813823          	sd	s0,16(sp)
    800091f0:	00113c23          	sd	ra,24(sp)
    800091f4:	00913423          	sd	s1,8(sp)
    800091f8:	01213023          	sd	s2,0(sp)
    800091fc:	02010413          	addi	s0,sp,32
    80009200:	00052783          	lw	a5,0(a0)
    80009204:	00079a63          	bnez	a5,80009218 <release+0x30>
    80009208:	00001517          	auipc	a0,0x1
    8000920c:	57850513          	addi	a0,a0,1400 # 8000a780 <digits+0x28>
    80009210:	fffff097          	auipc	ra,0xfffff
    80009214:	1dc080e7          	jalr	476(ra) # 800083ec <panic>
    80009218:	01053903          	ld	s2,16(a0)
    8000921c:	00050493          	mv	s1,a0
    80009220:	fffff097          	auipc	ra,0xfffff
    80009224:	808080e7          	jalr	-2040(ra) # 80007a28 <mycpu>
    80009228:	fea910e3          	bne	s2,a0,80009208 <release+0x20>
    8000922c:	0004b823          	sd	zero,16(s1)
    80009230:	0ff0000f          	fence
    80009234:	0f50000f          	fence	iorw,ow
    80009238:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000923c:	ffffe097          	auipc	ra,0xffffe
    80009240:	7ec080e7          	jalr	2028(ra) # 80007a28 <mycpu>
    80009244:	100027f3          	csrr	a5,sstatus
    80009248:	0027f793          	andi	a5,a5,2
    8000924c:	04079a63          	bnez	a5,800092a0 <release+0xb8>
    80009250:	07852783          	lw	a5,120(a0)
    80009254:	02f05e63          	blez	a5,80009290 <release+0xa8>
    80009258:	fff7871b          	addiw	a4,a5,-1
    8000925c:	06e52c23          	sw	a4,120(a0)
    80009260:	00071c63          	bnez	a4,80009278 <release+0x90>
    80009264:	07c52783          	lw	a5,124(a0)
    80009268:	00078863          	beqz	a5,80009278 <release+0x90>
    8000926c:	100027f3          	csrr	a5,sstatus
    80009270:	0027e793          	ori	a5,a5,2
    80009274:	10079073          	csrw	sstatus,a5
    80009278:	01813083          	ld	ra,24(sp)
    8000927c:	01013403          	ld	s0,16(sp)
    80009280:	00813483          	ld	s1,8(sp)
    80009284:	00013903          	ld	s2,0(sp)
    80009288:	02010113          	addi	sp,sp,32
    8000928c:	00008067          	ret
    80009290:	00001517          	auipc	a0,0x1
    80009294:	51050513          	addi	a0,a0,1296 # 8000a7a0 <digits+0x48>
    80009298:	fffff097          	auipc	ra,0xfffff
    8000929c:	154080e7          	jalr	340(ra) # 800083ec <panic>
    800092a0:	00001517          	auipc	a0,0x1
    800092a4:	4e850513          	addi	a0,a0,1256 # 8000a788 <digits+0x30>
    800092a8:	fffff097          	auipc	ra,0xfffff
    800092ac:	144080e7          	jalr	324(ra) # 800083ec <panic>

00000000800092b0 <holding>:
    800092b0:	00052783          	lw	a5,0(a0)
    800092b4:	00079663          	bnez	a5,800092c0 <holding+0x10>
    800092b8:	00000513          	li	a0,0
    800092bc:	00008067          	ret
    800092c0:	fe010113          	addi	sp,sp,-32
    800092c4:	00813823          	sd	s0,16(sp)
    800092c8:	00913423          	sd	s1,8(sp)
    800092cc:	00113c23          	sd	ra,24(sp)
    800092d0:	02010413          	addi	s0,sp,32
    800092d4:	01053483          	ld	s1,16(a0)
    800092d8:	ffffe097          	auipc	ra,0xffffe
    800092dc:	750080e7          	jalr	1872(ra) # 80007a28 <mycpu>
    800092e0:	01813083          	ld	ra,24(sp)
    800092e4:	01013403          	ld	s0,16(sp)
    800092e8:	40a48533          	sub	a0,s1,a0
    800092ec:	00153513          	seqz	a0,a0
    800092f0:	00813483          	ld	s1,8(sp)
    800092f4:	02010113          	addi	sp,sp,32
    800092f8:	00008067          	ret

00000000800092fc <push_off>:
    800092fc:	fe010113          	addi	sp,sp,-32
    80009300:	00813823          	sd	s0,16(sp)
    80009304:	00113c23          	sd	ra,24(sp)
    80009308:	00913423          	sd	s1,8(sp)
    8000930c:	02010413          	addi	s0,sp,32
    80009310:	100024f3          	csrr	s1,sstatus
    80009314:	100027f3          	csrr	a5,sstatus
    80009318:	ffd7f793          	andi	a5,a5,-3
    8000931c:	10079073          	csrw	sstatus,a5
    80009320:	ffffe097          	auipc	ra,0xffffe
    80009324:	708080e7          	jalr	1800(ra) # 80007a28 <mycpu>
    80009328:	07852783          	lw	a5,120(a0)
    8000932c:	02078663          	beqz	a5,80009358 <push_off+0x5c>
    80009330:	ffffe097          	auipc	ra,0xffffe
    80009334:	6f8080e7          	jalr	1784(ra) # 80007a28 <mycpu>
    80009338:	07852783          	lw	a5,120(a0)
    8000933c:	01813083          	ld	ra,24(sp)
    80009340:	01013403          	ld	s0,16(sp)
    80009344:	0017879b          	addiw	a5,a5,1
    80009348:	06f52c23          	sw	a5,120(a0)
    8000934c:	00813483          	ld	s1,8(sp)
    80009350:	02010113          	addi	sp,sp,32
    80009354:	00008067          	ret
    80009358:	0014d493          	srli	s1,s1,0x1
    8000935c:	ffffe097          	auipc	ra,0xffffe
    80009360:	6cc080e7          	jalr	1740(ra) # 80007a28 <mycpu>
    80009364:	0014f493          	andi	s1,s1,1
    80009368:	06952e23          	sw	s1,124(a0)
    8000936c:	fc5ff06f          	j	80009330 <push_off+0x34>

0000000080009370 <pop_off>:
    80009370:	ff010113          	addi	sp,sp,-16
    80009374:	00813023          	sd	s0,0(sp)
    80009378:	00113423          	sd	ra,8(sp)
    8000937c:	01010413          	addi	s0,sp,16
    80009380:	ffffe097          	auipc	ra,0xffffe
    80009384:	6a8080e7          	jalr	1704(ra) # 80007a28 <mycpu>
    80009388:	100027f3          	csrr	a5,sstatus
    8000938c:	0027f793          	andi	a5,a5,2
    80009390:	04079663          	bnez	a5,800093dc <pop_off+0x6c>
    80009394:	07852783          	lw	a5,120(a0)
    80009398:	02f05a63          	blez	a5,800093cc <pop_off+0x5c>
    8000939c:	fff7871b          	addiw	a4,a5,-1
    800093a0:	06e52c23          	sw	a4,120(a0)
    800093a4:	00071c63          	bnez	a4,800093bc <pop_off+0x4c>
    800093a8:	07c52783          	lw	a5,124(a0)
    800093ac:	00078863          	beqz	a5,800093bc <pop_off+0x4c>
    800093b0:	100027f3          	csrr	a5,sstatus
    800093b4:	0027e793          	ori	a5,a5,2
    800093b8:	10079073          	csrw	sstatus,a5
    800093bc:	00813083          	ld	ra,8(sp)
    800093c0:	00013403          	ld	s0,0(sp)
    800093c4:	01010113          	addi	sp,sp,16
    800093c8:	00008067          	ret
    800093cc:	00001517          	auipc	a0,0x1
    800093d0:	3d450513          	addi	a0,a0,980 # 8000a7a0 <digits+0x48>
    800093d4:	fffff097          	auipc	ra,0xfffff
    800093d8:	018080e7          	jalr	24(ra) # 800083ec <panic>
    800093dc:	00001517          	auipc	a0,0x1
    800093e0:	3ac50513          	addi	a0,a0,940 # 8000a788 <digits+0x30>
    800093e4:	fffff097          	auipc	ra,0xfffff
    800093e8:	008080e7          	jalr	8(ra) # 800083ec <panic>

00000000800093ec <push_on>:
    800093ec:	fe010113          	addi	sp,sp,-32
    800093f0:	00813823          	sd	s0,16(sp)
    800093f4:	00113c23          	sd	ra,24(sp)
    800093f8:	00913423          	sd	s1,8(sp)
    800093fc:	02010413          	addi	s0,sp,32
    80009400:	100024f3          	csrr	s1,sstatus
    80009404:	100027f3          	csrr	a5,sstatus
    80009408:	0027e793          	ori	a5,a5,2
    8000940c:	10079073          	csrw	sstatus,a5
    80009410:	ffffe097          	auipc	ra,0xffffe
    80009414:	618080e7          	jalr	1560(ra) # 80007a28 <mycpu>
    80009418:	07852783          	lw	a5,120(a0)
    8000941c:	02078663          	beqz	a5,80009448 <push_on+0x5c>
    80009420:	ffffe097          	auipc	ra,0xffffe
    80009424:	608080e7          	jalr	1544(ra) # 80007a28 <mycpu>
    80009428:	07852783          	lw	a5,120(a0)
    8000942c:	01813083          	ld	ra,24(sp)
    80009430:	01013403          	ld	s0,16(sp)
    80009434:	0017879b          	addiw	a5,a5,1
    80009438:	06f52c23          	sw	a5,120(a0)
    8000943c:	00813483          	ld	s1,8(sp)
    80009440:	02010113          	addi	sp,sp,32
    80009444:	00008067          	ret
    80009448:	0014d493          	srli	s1,s1,0x1
    8000944c:	ffffe097          	auipc	ra,0xffffe
    80009450:	5dc080e7          	jalr	1500(ra) # 80007a28 <mycpu>
    80009454:	0014f493          	andi	s1,s1,1
    80009458:	06952e23          	sw	s1,124(a0)
    8000945c:	fc5ff06f          	j	80009420 <push_on+0x34>

0000000080009460 <pop_on>:
    80009460:	ff010113          	addi	sp,sp,-16
    80009464:	00813023          	sd	s0,0(sp)
    80009468:	00113423          	sd	ra,8(sp)
    8000946c:	01010413          	addi	s0,sp,16
    80009470:	ffffe097          	auipc	ra,0xffffe
    80009474:	5b8080e7          	jalr	1464(ra) # 80007a28 <mycpu>
    80009478:	100027f3          	csrr	a5,sstatus
    8000947c:	0027f793          	andi	a5,a5,2
    80009480:	04078463          	beqz	a5,800094c8 <pop_on+0x68>
    80009484:	07852783          	lw	a5,120(a0)
    80009488:	02f05863          	blez	a5,800094b8 <pop_on+0x58>
    8000948c:	fff7879b          	addiw	a5,a5,-1
    80009490:	06f52c23          	sw	a5,120(a0)
    80009494:	07853783          	ld	a5,120(a0)
    80009498:	00079863          	bnez	a5,800094a8 <pop_on+0x48>
    8000949c:	100027f3          	csrr	a5,sstatus
    800094a0:	ffd7f793          	andi	a5,a5,-3
    800094a4:	10079073          	csrw	sstatus,a5
    800094a8:	00813083          	ld	ra,8(sp)
    800094ac:	00013403          	ld	s0,0(sp)
    800094b0:	01010113          	addi	sp,sp,16
    800094b4:	00008067          	ret
    800094b8:	00001517          	auipc	a0,0x1
    800094bc:	31050513          	addi	a0,a0,784 # 8000a7c8 <digits+0x70>
    800094c0:	fffff097          	auipc	ra,0xfffff
    800094c4:	f2c080e7          	jalr	-212(ra) # 800083ec <panic>
    800094c8:	00001517          	auipc	a0,0x1
    800094cc:	2e050513          	addi	a0,a0,736 # 8000a7a8 <digits+0x50>
    800094d0:	fffff097          	auipc	ra,0xfffff
    800094d4:	f1c080e7          	jalr	-228(ra) # 800083ec <panic>

00000000800094d8 <__memset>:
    800094d8:	ff010113          	addi	sp,sp,-16
    800094dc:	00813423          	sd	s0,8(sp)
    800094e0:	01010413          	addi	s0,sp,16
    800094e4:	1a060e63          	beqz	a2,800096a0 <__memset+0x1c8>
    800094e8:	40a007b3          	neg	a5,a0
    800094ec:	0077f793          	andi	a5,a5,7
    800094f0:	00778693          	addi	a3,a5,7
    800094f4:	00b00813          	li	a6,11
    800094f8:	0ff5f593          	andi	a1,a1,255
    800094fc:	fff6071b          	addiw	a4,a2,-1
    80009500:	1b06e663          	bltu	a3,a6,800096ac <__memset+0x1d4>
    80009504:	1cd76463          	bltu	a4,a3,800096cc <__memset+0x1f4>
    80009508:	1a078e63          	beqz	a5,800096c4 <__memset+0x1ec>
    8000950c:	00b50023          	sb	a1,0(a0)
    80009510:	00100713          	li	a4,1
    80009514:	1ae78463          	beq	a5,a4,800096bc <__memset+0x1e4>
    80009518:	00b500a3          	sb	a1,1(a0)
    8000951c:	00200713          	li	a4,2
    80009520:	1ae78a63          	beq	a5,a4,800096d4 <__memset+0x1fc>
    80009524:	00b50123          	sb	a1,2(a0)
    80009528:	00300713          	li	a4,3
    8000952c:	18e78463          	beq	a5,a4,800096b4 <__memset+0x1dc>
    80009530:	00b501a3          	sb	a1,3(a0)
    80009534:	00400713          	li	a4,4
    80009538:	1ae78263          	beq	a5,a4,800096dc <__memset+0x204>
    8000953c:	00b50223          	sb	a1,4(a0)
    80009540:	00500713          	li	a4,5
    80009544:	1ae78063          	beq	a5,a4,800096e4 <__memset+0x20c>
    80009548:	00b502a3          	sb	a1,5(a0)
    8000954c:	00700713          	li	a4,7
    80009550:	18e79e63          	bne	a5,a4,800096ec <__memset+0x214>
    80009554:	00b50323          	sb	a1,6(a0)
    80009558:	00700e93          	li	t4,7
    8000955c:	00859713          	slli	a4,a1,0x8
    80009560:	00e5e733          	or	a4,a1,a4
    80009564:	01059e13          	slli	t3,a1,0x10
    80009568:	01c76e33          	or	t3,a4,t3
    8000956c:	01859313          	slli	t1,a1,0x18
    80009570:	006e6333          	or	t1,t3,t1
    80009574:	02059893          	slli	a7,a1,0x20
    80009578:	40f60e3b          	subw	t3,a2,a5
    8000957c:	011368b3          	or	a7,t1,a7
    80009580:	02859813          	slli	a6,a1,0x28
    80009584:	0108e833          	or	a6,a7,a6
    80009588:	03059693          	slli	a3,a1,0x30
    8000958c:	003e589b          	srliw	a7,t3,0x3
    80009590:	00d866b3          	or	a3,a6,a3
    80009594:	03859713          	slli	a4,a1,0x38
    80009598:	00389813          	slli	a6,a7,0x3
    8000959c:	00f507b3          	add	a5,a0,a5
    800095a0:	00e6e733          	or	a4,a3,a4
    800095a4:	000e089b          	sext.w	a7,t3
    800095a8:	00f806b3          	add	a3,a6,a5
    800095ac:	00e7b023          	sd	a4,0(a5)
    800095b0:	00878793          	addi	a5,a5,8
    800095b4:	fed79ce3          	bne	a5,a3,800095ac <__memset+0xd4>
    800095b8:	ff8e7793          	andi	a5,t3,-8
    800095bc:	0007871b          	sext.w	a4,a5
    800095c0:	01d787bb          	addw	a5,a5,t4
    800095c4:	0ce88e63          	beq	a7,a4,800096a0 <__memset+0x1c8>
    800095c8:	00f50733          	add	a4,a0,a5
    800095cc:	00b70023          	sb	a1,0(a4)
    800095d0:	0017871b          	addiw	a4,a5,1
    800095d4:	0cc77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    800095d8:	00e50733          	add	a4,a0,a4
    800095dc:	00b70023          	sb	a1,0(a4)
    800095e0:	0027871b          	addiw	a4,a5,2
    800095e4:	0ac77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    800095e8:	00e50733          	add	a4,a0,a4
    800095ec:	00b70023          	sb	a1,0(a4)
    800095f0:	0037871b          	addiw	a4,a5,3
    800095f4:	0ac77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    800095f8:	00e50733          	add	a4,a0,a4
    800095fc:	00b70023          	sb	a1,0(a4)
    80009600:	0047871b          	addiw	a4,a5,4
    80009604:	08c77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009608:	00e50733          	add	a4,a0,a4
    8000960c:	00b70023          	sb	a1,0(a4)
    80009610:	0057871b          	addiw	a4,a5,5
    80009614:	08c77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009618:	00e50733          	add	a4,a0,a4
    8000961c:	00b70023          	sb	a1,0(a4)
    80009620:	0067871b          	addiw	a4,a5,6
    80009624:	06c77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009628:	00e50733          	add	a4,a0,a4
    8000962c:	00b70023          	sb	a1,0(a4)
    80009630:	0077871b          	addiw	a4,a5,7
    80009634:	06c77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009638:	00e50733          	add	a4,a0,a4
    8000963c:	00b70023          	sb	a1,0(a4)
    80009640:	0087871b          	addiw	a4,a5,8
    80009644:	04c77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009648:	00e50733          	add	a4,a0,a4
    8000964c:	00b70023          	sb	a1,0(a4)
    80009650:	0097871b          	addiw	a4,a5,9
    80009654:	04c77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009658:	00e50733          	add	a4,a0,a4
    8000965c:	00b70023          	sb	a1,0(a4)
    80009660:	00a7871b          	addiw	a4,a5,10
    80009664:	02c77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009668:	00e50733          	add	a4,a0,a4
    8000966c:	00b70023          	sb	a1,0(a4)
    80009670:	00b7871b          	addiw	a4,a5,11
    80009674:	02c77663          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009678:	00e50733          	add	a4,a0,a4
    8000967c:	00b70023          	sb	a1,0(a4)
    80009680:	00c7871b          	addiw	a4,a5,12
    80009684:	00c77e63          	bgeu	a4,a2,800096a0 <__memset+0x1c8>
    80009688:	00e50733          	add	a4,a0,a4
    8000968c:	00b70023          	sb	a1,0(a4)
    80009690:	00d7879b          	addiw	a5,a5,13
    80009694:	00c7f663          	bgeu	a5,a2,800096a0 <__memset+0x1c8>
    80009698:	00f507b3          	add	a5,a0,a5
    8000969c:	00b78023          	sb	a1,0(a5)
    800096a0:	00813403          	ld	s0,8(sp)
    800096a4:	01010113          	addi	sp,sp,16
    800096a8:	00008067          	ret
    800096ac:	00b00693          	li	a3,11
    800096b0:	e55ff06f          	j	80009504 <__memset+0x2c>
    800096b4:	00300e93          	li	t4,3
    800096b8:	ea5ff06f          	j	8000955c <__memset+0x84>
    800096bc:	00100e93          	li	t4,1
    800096c0:	e9dff06f          	j	8000955c <__memset+0x84>
    800096c4:	00000e93          	li	t4,0
    800096c8:	e95ff06f          	j	8000955c <__memset+0x84>
    800096cc:	00000793          	li	a5,0
    800096d0:	ef9ff06f          	j	800095c8 <__memset+0xf0>
    800096d4:	00200e93          	li	t4,2
    800096d8:	e85ff06f          	j	8000955c <__memset+0x84>
    800096dc:	00400e93          	li	t4,4
    800096e0:	e7dff06f          	j	8000955c <__memset+0x84>
    800096e4:	00500e93          	li	t4,5
    800096e8:	e75ff06f          	j	8000955c <__memset+0x84>
    800096ec:	00600e93          	li	t4,6
    800096f0:	e6dff06f          	j	8000955c <__memset+0x84>

00000000800096f4 <__memmove>:
    800096f4:	ff010113          	addi	sp,sp,-16
    800096f8:	00813423          	sd	s0,8(sp)
    800096fc:	01010413          	addi	s0,sp,16
    80009700:	0e060863          	beqz	a2,800097f0 <__memmove+0xfc>
    80009704:	fff6069b          	addiw	a3,a2,-1
    80009708:	0006881b          	sext.w	a6,a3
    8000970c:	0ea5e863          	bltu	a1,a0,800097fc <__memmove+0x108>
    80009710:	00758713          	addi	a4,a1,7
    80009714:	00a5e7b3          	or	a5,a1,a0
    80009718:	40a70733          	sub	a4,a4,a0
    8000971c:	0077f793          	andi	a5,a5,7
    80009720:	00f73713          	sltiu	a4,a4,15
    80009724:	00174713          	xori	a4,a4,1
    80009728:	0017b793          	seqz	a5,a5
    8000972c:	00e7f7b3          	and	a5,a5,a4
    80009730:	10078863          	beqz	a5,80009840 <__memmove+0x14c>
    80009734:	00900793          	li	a5,9
    80009738:	1107f463          	bgeu	a5,a6,80009840 <__memmove+0x14c>
    8000973c:	0036581b          	srliw	a6,a2,0x3
    80009740:	fff8081b          	addiw	a6,a6,-1
    80009744:	02081813          	slli	a6,a6,0x20
    80009748:	01d85893          	srli	a7,a6,0x1d
    8000974c:	00858813          	addi	a6,a1,8
    80009750:	00058793          	mv	a5,a1
    80009754:	00050713          	mv	a4,a0
    80009758:	01088833          	add	a6,a7,a6
    8000975c:	0007b883          	ld	a7,0(a5)
    80009760:	00878793          	addi	a5,a5,8
    80009764:	00870713          	addi	a4,a4,8
    80009768:	ff173c23          	sd	a7,-8(a4)
    8000976c:	ff0798e3          	bne	a5,a6,8000975c <__memmove+0x68>
    80009770:	ff867713          	andi	a4,a2,-8
    80009774:	02071793          	slli	a5,a4,0x20
    80009778:	0207d793          	srli	a5,a5,0x20
    8000977c:	00f585b3          	add	a1,a1,a5
    80009780:	40e686bb          	subw	a3,a3,a4
    80009784:	00f507b3          	add	a5,a0,a5
    80009788:	06e60463          	beq	a2,a4,800097f0 <__memmove+0xfc>
    8000978c:	0005c703          	lbu	a4,0(a1)
    80009790:	00e78023          	sb	a4,0(a5)
    80009794:	04068e63          	beqz	a3,800097f0 <__memmove+0xfc>
    80009798:	0015c603          	lbu	a2,1(a1)
    8000979c:	00100713          	li	a4,1
    800097a0:	00c780a3          	sb	a2,1(a5)
    800097a4:	04e68663          	beq	a3,a4,800097f0 <__memmove+0xfc>
    800097a8:	0025c603          	lbu	a2,2(a1)
    800097ac:	00200713          	li	a4,2
    800097b0:	00c78123          	sb	a2,2(a5)
    800097b4:	02e68e63          	beq	a3,a4,800097f0 <__memmove+0xfc>
    800097b8:	0035c603          	lbu	a2,3(a1)
    800097bc:	00300713          	li	a4,3
    800097c0:	00c781a3          	sb	a2,3(a5)
    800097c4:	02e68663          	beq	a3,a4,800097f0 <__memmove+0xfc>
    800097c8:	0045c603          	lbu	a2,4(a1)
    800097cc:	00400713          	li	a4,4
    800097d0:	00c78223          	sb	a2,4(a5)
    800097d4:	00e68e63          	beq	a3,a4,800097f0 <__memmove+0xfc>
    800097d8:	0055c603          	lbu	a2,5(a1)
    800097dc:	00500713          	li	a4,5
    800097e0:	00c782a3          	sb	a2,5(a5)
    800097e4:	00e68663          	beq	a3,a4,800097f0 <__memmove+0xfc>
    800097e8:	0065c703          	lbu	a4,6(a1)
    800097ec:	00e78323          	sb	a4,6(a5)
    800097f0:	00813403          	ld	s0,8(sp)
    800097f4:	01010113          	addi	sp,sp,16
    800097f8:	00008067          	ret
    800097fc:	02061713          	slli	a4,a2,0x20
    80009800:	02075713          	srli	a4,a4,0x20
    80009804:	00e587b3          	add	a5,a1,a4
    80009808:	f0f574e3          	bgeu	a0,a5,80009710 <__memmove+0x1c>
    8000980c:	02069613          	slli	a2,a3,0x20
    80009810:	02065613          	srli	a2,a2,0x20
    80009814:	fff64613          	not	a2,a2
    80009818:	00e50733          	add	a4,a0,a4
    8000981c:	00c78633          	add	a2,a5,a2
    80009820:	fff7c683          	lbu	a3,-1(a5)
    80009824:	fff78793          	addi	a5,a5,-1
    80009828:	fff70713          	addi	a4,a4,-1
    8000982c:	00d70023          	sb	a3,0(a4)
    80009830:	fec798e3          	bne	a5,a2,80009820 <__memmove+0x12c>
    80009834:	00813403          	ld	s0,8(sp)
    80009838:	01010113          	addi	sp,sp,16
    8000983c:	00008067          	ret
    80009840:	02069713          	slli	a4,a3,0x20
    80009844:	02075713          	srli	a4,a4,0x20
    80009848:	00170713          	addi	a4,a4,1
    8000984c:	00e50733          	add	a4,a0,a4
    80009850:	00050793          	mv	a5,a0
    80009854:	0005c683          	lbu	a3,0(a1)
    80009858:	00178793          	addi	a5,a5,1
    8000985c:	00158593          	addi	a1,a1,1
    80009860:	fed78fa3          	sb	a3,-1(a5)
    80009864:	fee798e3          	bne	a5,a4,80009854 <__memmove+0x160>
    80009868:	f89ff06f          	j	800097f0 <__memmove+0xfc>
	...
