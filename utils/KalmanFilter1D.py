import numpy as np


class KalmanFilter1D(object):
    def __init__(self, dt, u, std_acc, std_meas):
        self.dt = dt
        self.u = u
        self.std_acc = std_acc

        self.A = np.matrix([[1, self.dt], [0, 1]])
        self.B = np.matrix([[(self.dt**2) / 2], [self.dt]])

        self.H = np.matrix([[1, 0]])

        self.Q = (
            np.matrix(
                [
                    [(self.dt**4) / 4, (self.dt**3) / 2],
                    [(self.dt**3) / 2, self.dt**2],
                ]
            )
            * self.std_acc**2
        )

        self.R = std_meas**2

        self.P = np.eye(self.A.shape[1])

        self.x = np.matrix([[0], [0]])

        self.predictions = []
        self.measurements = []

    def predict(self):
        # Ref :Eq.(9) and Eq.(10)

        # Update time state
        self.x = np.dot(self.A, self.x) + np.dot(self.B, self.u)

        # Calculate error covariance
        # P= A*P*A' + Q
        self.P = np.dot(np.dot(self.A, self.P), self.A.T) + self.Q
        return self.x

    def update(self, z):
        # Ref :Eq.(11) , Eq.(11) and Eq.(13)
        # S = H*P*H'+R
        S = np.dot(self.H, np.dot(self.P, self.H.T)) + self.R

        # Calculate the Kalman Gain
        # K = P * H'* inv(H*P*H'+R)
        K = np.dot(np.dot(self.P, self.H.T), np.linalg.inv(S))  # Eq.(11)

        self.x = np.round(self.x + np.dot(K, (z - np.dot(self.H, self.x))))  # Eq.(12)

        I = np.eye(self.H.shape[1])
        self.P = (I - (K * self.H)) * self.P  # Eq.(13)

    def step(self, measurement):
        self.measurements.append(measurement)
        self.predictions.append(self.predict()[0])
        self.update(measurement)
        return self.predictions[-1][0, 0]
