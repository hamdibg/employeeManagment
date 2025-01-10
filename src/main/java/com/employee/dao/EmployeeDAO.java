package com.employee.dao;

import com.employee.bean.EmployeeBean;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDAO {

    public void addEmployee(EmployeeBean employee) throws SQLException {
        String sql = "INSERT INTO employees (first_name, last_name, email, salary) VALUES (?, ?, ?, ?)";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getEmail());
            stmt.setDouble(4, employee.getSalary());
            stmt.executeUpdate();
        }
    }

    public void updateEmployee(EmployeeBean employee) {
        String sql = "UPDATE employees SET first_name=?, last_name=?, email=?, salary=? WHERE id=?";
        try (Connection conn = DBConnection.getConnection()){
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, employee.getFirstName());
            stmt.setString(2, employee.getLastName());
            stmt.setString(3, employee.getEmail());
            stmt.setDouble(4, employee.getSalary());
            stmt.setInt(5, employee.getId());
            stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteEmployee(int id) throws SQLException {
        String sql = "DELETE FROM employees WHERE id=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            stmt.executeUpdate();
        }
    }

    public EmployeeBean getEmployee(int id) throws SQLException {
        String sql = "SELECT * FROM employees WHERE id=?";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                EmployeeBean employee = new EmployeeBean();
                employee.setId(rs.getInt("id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setEmail(rs.getString("email"));
                employee.setSalary(rs.getDouble("salary"));
                return employee;
            }
        }
        return null;
    }

    // Get all employees
    public List<EmployeeBean> getAllEmployees() throws SQLException {
        List<EmployeeBean> employees = new ArrayList<>();
        String sql = "SELECT * FROM employees";
        try (Connection conn = DBConnection.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            while (rs.next()) {
                EmployeeBean employee = new EmployeeBean();
                employee.setId(rs.getInt("id"));
                employee.setFirstName(rs.getString("first_name"));
                employee.setLastName(rs.getString("last_name"));
                employee.setEmail(rs.getString("email"));
                employee.setSalary(rs.getDouble("salary"));
                employees.add(employee);
            }
        }
        return employees;
    }
}

