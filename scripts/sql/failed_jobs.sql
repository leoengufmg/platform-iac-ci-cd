-- Check failed jobs in the last 24 hours
SELECT job_id, status, ended_at
FROM platform_jobs
WHERE status = 'FAILED'
  AND ended_at >= NOW() - INTERVAL '24 hours';