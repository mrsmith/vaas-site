# VaaS Developer API

## Deploy Violence

```http
POST /api/v1/violence/deploy
Content-Type: application/json

{
  "level": "shove" | "pummel" | "obliterate",
  "target": "coordinates or ID"
}
```

## Check Status

```http
GET /api/v1/violence/status
```

_Response_:

```json
{
  "queue": 5,
  "active": 2,
  "collateral": "minimal"
}
```

## Scale Agents

```http
PATCH /api/v1/violence/scale
Content-Type: application/json

{ "delta_agents": +10 }
```

## Ceasefire

```http
DELETE /api/v1/violence/ceasefire
{ "target": "coordinates or ID" }
```

[‹ Pricing](pricing.html) • [Home](index.html)
