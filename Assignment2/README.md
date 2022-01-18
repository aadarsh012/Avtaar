# Avtaar Assignment 2

Database Used is MongoDB.

## Installation

Install my-project with npm

Clone the Repository to your system

Now start the server using following

```bash
  cd Assignment2
  npm install
  nodemon index.js
```

## API Reference

#### Add User

```http
  POST /api/adduser
```

Add in the body the following

| Parameter  | Type          | Description                 |
| :--------- | :------------ | :-------------------------- |
| `username` | `string`      | **Required**. Your Username |
| `gender`   | `string,enum` | **Required**. Male/Female   |
| `email`    | `email`       | **Required**. Your Email    |

#### Add Event

```http
  POST /api/addevent
```

| Parameter    | Type          | Description                                 |
| :----------- | :------------ | :------------------------------------------ |
| `uid`        | `ObjectId`    | **Required**. Id of the user                |
| `name`       | `string`      | **Required**. Name of Event                 |
| `occurrence` | `string,enum` | **Required**. WEEKLY/MONTHLY/YEARLY/ONETIME |
| `startDate`  | `Date`        | **Required**. "YYYY-MM-DD"                  |
| `endDate`    | `Date`        | **Required**. "YYYY-MM-DD"                  |

## Screenshots

![PostmanAddUser](/ScreenShots/PostmanAddUser.png)
![AddUserDatabase](/ScreenShots/AddUserDatabase.png)
![PostmanAddEvent](/ScreenShots/PostmanAddEvent.png)
![AddEventDatabase](/ScreenShots/AddEventDatabase.png)
