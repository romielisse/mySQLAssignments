-- 1.

/*
@Entity
public class Person {
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;
	
    private String first_name;
    private String last_name;
    private int age;
	
	@OneToMany
    @JoinColumn(name = "pet_id")
	private Pet pet;
}

@Entity
public class Pet {
    @Id
    @NotNull
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String name;
    private String breed;
    private int age;
    private boolean dead;
}
*/

-- 2.

select * from pet;

-- 3.

SELECT pet.id, pet.name, pet.age, pet.dead
FROM pet, person_pet, person
WHERE
pet.id = person_pet.pet_id AND
person_pet.person_id = person.id AND
person.id = 6