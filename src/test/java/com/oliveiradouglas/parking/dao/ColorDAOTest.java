package com.oliveiradouglas.parking.dao;

import static org.junit.Assert.assertTrue;

import java.sql.SQLException;
import java.util.List;

import org.junit.Test;

import com.oliveiradouglas.parking.models.Color;

public class ColorDAOTest {
	@Test
	public void testFindAllMustReturnAllStoredColorsInDatabase() throws SQLException {
		ColorDAO dao = new ColorDAO();
		List<Color> colors = dao.findAll();
		assertTrue(colors.size() >= 12);
	}
}
