package org.seckill.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.seckill.entity.Seckill;

public interface SeckillDao {

	/*
	 * �����
	 */
	int reduceNumber(@Param("seckillId") long seckillId,@Param("killTime") Date killTime);
	
	/*
	 * ����id��ѯ��ɱ��Ʒ
	 */
	Seckill queryById(long seckillId);
	
	/*
	 * ����ƫ������ѯ��ɱ��Ʒ�б�
	 * javaû�б����βεļ�¼��queryAll(offset,limit)�ᱻĬ��ΪqueryAll(arg0,arg1),
	 * ��˿���ʹ��@paramע��ı��ֳ�ʵ���β�
	 */
	List<Seckill> queryAll(@Param("offset") int offset,@Param("limit") int limit);
	
	/**
	 * ʹ�ô洢����ʹ����ɱ
	 * @param paramMap
	 */
	void killByProcedure(Map<String, Object> paramMap);
}
