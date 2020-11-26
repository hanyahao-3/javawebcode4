package cn.han.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Seat_type_price implements Serializable {
    private Integer id;

    private String seat_type;

    private String seat_price;
}
