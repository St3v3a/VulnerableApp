-- Level 1: password verified after a parameterized lookup.
INSERT INTO auth_users VALUES (1, 'admin_sqli', '$2y$12$q9LD7PXq9tlWNvoCgatrSOQolWk23XKxnly7sLOhStMsT.OBulfC2', NULL, 'BCRYPT', 1, 'admin_sqli@example.com', 'ADMIN');

-- Level 2: the disclosed legacy credential was rotated; reset is required for login.
INSERT INTO auth_users VALUES (2, 'admin_logs', '$2y$12$G./IhJxZnMXDZVDHpJ7B6.S3YIZDHkUa2BrIZX5hF80lftqLQD4x2', NULL, 'BCRYPT', 2, 'admin_logs@example.com', 'ADMIN');

-- Level 3: the existing exercise credential remains valid through a bcrypt verifier.
INSERT INTO auth_users VALUES (3, 'admin_plain', '$2y$12$5DsTP5m2CLmWRY9/clT4pOMZ50plTaCkHnUqH3Ugik0andNa7hYq6', NULL, 'BCRYPT', 3, 'admin_plain@example.com', 'ADMIN');

-- Level 4: MD5 Hashing (f2C@9tYk*1hP)
INSERT INTO auth_users VALUES (4, 'admin_md5', '0168b6037606df265be7f1f5d9c0e7fe', NULL, 'MD5', 4, 'admin_md5@example.com', 'ADMIN');

-- Level 5: SHA1 Hashing (x5B&3gHq+7vS)
INSERT INTO auth_users VALUES (5, 'admin_sha1', '632e10860bd26278451d3f89d1c46f180e5623e0', NULL, 'SHA1', 5, 'admin_sha1@example.com', 'ADMIN');

-- Level 6: SHA-256 (No Salt) (m8D!4kLr#2jZ)
INSERT INTO auth_users VALUES (6, 'admin_sha256', '8b8eca84f7e2b04f531749f999c3bf9e3f045bab78f4c8a451fa70929b3c3946', NULL, 'SHA256', 6, 'admin_sha256@example.com', 'ADMIN');

-- Level 7: Salted SHA-256 (q1W%6nTp^8vM with Salt s9A#2zLk)
INSERT INTO auth_users VALUES (7, 'admin_enum', '71ad23cc508b5658f0bc21d8323f55521be98ca951e83a4a4d15641a3ca2b8a4', 's9A#2zLk', 'SHA256', 7, 'admin_enum@example.com', 'ADMIN');

-- Level 8: the weak credential was rotated to a high-entropy password.
INSERT INTO auth_users VALUES (8, 'admin_weak', '$2y$12$smntEfOGa8sF3jVYkH8v0uzQz8m6WzdavNCJ8pyF89nqSWJB7VUuK', NULL, 'BCRYPT', 8, 'admin_weak@example.com', 'ADMIN');

-- Level 9: Secure (Bcrypt + Generic Error) (9fG#2hJk*LmN!8qR)
-- Bcrypt hash for '9fG#2hJk*LmN!8qR'
INSERT INTO auth_users VALUES (9, 'admin_secure', '$2a$10$1WiFUNqUY/vHTzR2QtuMQuzCLK3aZEdjEUpqS4msXOevaCz7Wobe.', NULL, 'BCRYPT', 9, 'admin_secure@example.com', 'ADMIN');

-- Level 10: the weak credential and cost-4 verifier were replaced.
INSERT INTO auth_users VALUES (10, 'admin_lowcost', '$2y$12$f9jn7QtQPHH.VrbaCkSq5ujHOzbY16xkadJN77PpW4Op32vyxmIXS', NULL, 'BCRYPT', 10, 'admin_lowcost@example.com', 'ADMIN');
