# 🔦 Raycast

**`#bs.raycast:help`**

Cast rays and see if they collide with blocks or entities.

```{note}
Unlike traditional raycasts, this module uses a voxel traversal algorithm which is a lot more precise. Also, thanks to the `bs.hitbox` module, it supports all of the different hitboxes, including both blocks & entities.
```

```{epigraph}
"Reality only reveals itself when it is illuminated by a ray of poetry."

-- Georges Braque
```

---

## 🔧 Functions

You can find below all functions available in this module.

---

### Run the raycast

```{function} #bs.raycast:run

Cast a ray from the execution position and check if it hits something.

:Inputs:
  **Execution `at <entity>` or `positioned <x> <y> <z> rotated <rot>`**: Origin of the ray.

  **Macro Var `with` [compound]**:
  :::{list-table}
  *   - **`blocks`**&nbsp;[bool]
      - Whether the ray should stop on blocks (default: true).
  *   - **`entities`**&nbsp;[bool|string]</span>
      - Whether the ray should stop on entities (default: false). Can also be a tag that entities must have.
  *   - **`max_distance`**&nbsp;[number]
      - Maximum ray travel distance (default: 16.0).
  *   - **`ignored_blocks`**&nbsp;[string]
      - Blocks to ignore (default: `#bs.hitbox:intangible`).
  *   - **`ignored_entities`**&nbsp;[string]
      - Entities to ignore (default: `#bs.hitbox:intangible`).
  :::

:Outputs:
  **Return**: Whether the ray collides with a hitbox or not (1 or 0).

  **Storage `bs:out raycast`**:
  :::{list-table}
  *   - **`distance`**&nbsp;[double]
      - The distance from the ray's origin to the impact point.
  *   - **`hit_point`**&nbsp;[array]
      - The coordintates of the impact point.
  *   - **`hit_normal`**&nbsp;[array]
      - The normal of the surface the ray hit.
  *   - **`targeted_block`**&nbsp;[array]
      - The coordinates of the block that was hit.
  *   - **`targeted_entity`**&nbsp;[array]
      - The UUID array of the entity that was hit.
  :::
```

*Cast a ray from your eyes and see, if it stopped, where it stopped:*

```mcfunction
# Once (return 0 if no collision occured)
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{}}

# If a collision occured, see the collision point
data get storage bs:out raycast.hit_point
```

> **Credits**: Aksiome

---

<div id="gs-comments" align=center>

**💬 Did it help you?**

Feel free to leave your questions and feedbacks below!

</div>
