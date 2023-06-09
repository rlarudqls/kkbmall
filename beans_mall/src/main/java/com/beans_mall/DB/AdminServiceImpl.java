package com.beans_mall.DB;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.beans_mall.VO.AttachImageVO;
import com.beans_mall.VO.BeanVO;
import com.beans_mall.VO.CateVO;
import com.beans_mall.VO.Criteria;
import com.beans_mall.VO.OrderDTO;
import com.beans_mall.DAO.kkbAdminDAO;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {

	@Autowired
	private kkbAdminDAO kkbAdminDAO;

	/* 상품 등록 */
	@Transactional
	@Override
	public void beanEnroll(BeanVO bean) {
		log.info("(service)beanEnroll........");
		kkbAdminDAO.beanEnroll(bean);

		if (bean.getImageList() == null || bean.getImageList().size() <= 0) {
			return;
		}

		bean.getImageList().forEach(attach -> {
			attach.setBeanId(bean.getBeanId());
			kkbAdminDAO.imageEnroll(attach);
		});
	}

	/* 카테고리 리스트 */
	@Override
	public List<CateVO> cateList() {
		log.info("(service)cateList........");
		return kkbAdminDAO.cateList();
	}

	/* 상품 리스트 */
	@Override
	public List<BeanVO> goodsGetList(Criteria cri) {
		log.info("beanGetList()..........");
		return kkbAdminDAO.beanGetList(cri);
	}

	/* 상품 총 갯수 */
	@Override
	public int goodsGetTotal(Criteria cri) {
		log.info("beanGetTotal().........");
		return kkbAdminDAO.beanGetTotal(cri);
	}

	/* 상품 조회 페이지 */
	@Override
	public BeanVO goodsGetDetail(int beanId) {
		log.info("(service)beanGetDetail......." + beanId);
		return kkbAdminDAO.beanGetDetail(beanId);
	}

	/* 상품 정보 수정 */
	@Transactional
	@Override
	public int goodsModify(BeanVO vo) {
		int result = kkbAdminDAO.beanModify(vo);

		if (result == 1 && vo.getImageList() != null && vo.getImageList().size() > 0) {
			kkbAdminDAO.deleteImageAll(vo.getBeanId());
			vo.getImageList().forEach(attach -> {
				attach.setBeanId(vo.getBeanId());
				kkbAdminDAO.imageEnroll(attach);
			});
		}

		return result;
	}

	/* 상품 정보 삭제 */
	@Override
	@Transactional
	public int goodsDelete(int beanId) {
		log.info("beanDelete..........");
		kkbAdminDAO.deleteImageAll(beanId);
		return kkbAdminDAO.beanDelete(beanId);
	}

	/* 지정 상품 이미지 정보 얻기 */
	@Override
	public List<AttachImageVO> getAttachInfo(int beanId) {
		log.info("getAttachInfo........");
		return kkbAdminDAO.getAttachInfo(beanId);
	}

	/* 주문 상품 리스트 */
	@Override
	public List<OrderDTO> getOrderList(Criteria cri) {
		return kkbAdminDAO.getOrderList(cri);
	}

	/* 주문 총 갯수 */
	@Override
	public int getOrderTotal(Criteria cri) {
		return kkbAdminDAO.getOrderTotal(cri);
	}
}
