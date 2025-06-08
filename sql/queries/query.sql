-- name: ListCategories :many
SELECT * FROM categories;

-- name: GetCategory :one
SELECT * FROM categories WHERE id = ?;

-- name: CreateCategory :execresult
INSERT INTO categories (id, name, description) VALUES (?, ?, ?);

-- name: UpdateCategory :execresult
UPDATE categories SET name = ?, description = ? WHERE id = ?;

-- name: DeleteCategory :execresult
DELETE FROM categories WHERE id = ?;
